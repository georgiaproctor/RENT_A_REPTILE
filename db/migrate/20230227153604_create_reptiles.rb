class CreateReptiles < ActiveRecord::Migration[7.0]
  def change
    create_table :reptiles do |t|
      t.string :name
      t.text :description
      t.string :species
      t.integer :daily_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
