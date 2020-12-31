class DecksController < ApplicationController
    def index
        decks = Deck.all
        render json: decks
    end

    def show
        deck = Deck.find(params[:id])
        render json: deck
    rescue ActiveRecord::RecordNotFound
        head :not_found
    end

    def create
        deck = Deck.create!(deck_params)
        render json: deck, status: :created
    end

    def destroy
        deck = Deck.find(params[:id])
        deck.delete
        head :no_content
    end

    private

    def deck_params
        params.permit(:cards)
    end
end
