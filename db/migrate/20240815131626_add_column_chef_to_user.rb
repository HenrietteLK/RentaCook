class AddColumnChefToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :chef_status, :boolean, default: false
  end
end
