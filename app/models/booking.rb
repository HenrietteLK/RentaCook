class Booking < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :chef

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :total_price, presence: true
  validates :specialty, presence: true
end
