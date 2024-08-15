class AddColumnDescriptionChef < ActiveRecord::Migration[7.1]
  def change
    add_column :chefs, :description, :text
  end
end
