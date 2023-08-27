class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :cmc
      t.string :colors
      t.string :color_identity
      t.string :card_type
      t.string :supertype
      t.string :types
      t.string :subtype
      t.string :rarity
      t.string :mtg_set
      t.string :set_name
      t.text :text
      t.text :flavor
      t.string :artist
      t.string :card_number
      t.string :power
      t.string :toughness
      t.text :legality

      t.timestamps
    end
  end
end
