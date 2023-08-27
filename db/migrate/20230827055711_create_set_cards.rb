class CreateSetCards < ActiveRecord::Migration[7.0]
  def change
    create_table :set_cards do |t|
      t.references :mtg_set, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
