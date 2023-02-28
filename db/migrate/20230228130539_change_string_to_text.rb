class ChangeStringToText < ActiveRecord::Migration[7.0]
  def change
    change_column :reptiles, :daily_price, :float
  end
end
