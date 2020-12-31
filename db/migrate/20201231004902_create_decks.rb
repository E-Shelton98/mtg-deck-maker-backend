class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.jsonb :cards

      t.timestamps
    end
  end
end
