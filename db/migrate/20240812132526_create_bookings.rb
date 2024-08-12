class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.references :user, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true
      t.float :price
      t.string :specialties
      t.text :message
      t.string :status, default: "Pending"

      t.timestamps
    end
  end
end
