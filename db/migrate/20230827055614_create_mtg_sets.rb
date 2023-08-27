class CreateMtgSets < ActiveRecord::Migration[7.0]
  def change
    create_table :mtg_sets do |t|
      t.string :code
      t.string :name
      t.string :card_type
      t.boolean :booster
      t.string :mkm_name
      t.string :release_date

      t.timestamps
    end
  end
end
