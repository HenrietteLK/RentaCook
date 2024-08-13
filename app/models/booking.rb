class Booking < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :chef

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :price, presence: true
  validates :specialties, presence: true
end
