class AddAddressToChefs < ActiveRecord::Migration[7.1]
  def change
    add_column :chefs, :address, :string
  end
end
