class AddColumnPricePerDay < ActiveRecord::Migration[7.1]
  def change
    add_column :chefs, :price_per_day, :float
  end
end
