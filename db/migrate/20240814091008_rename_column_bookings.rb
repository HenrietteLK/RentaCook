class RenameColumnBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :specialties, :specialty
    rename_column :bookings, :price, :total_price
  end
end
