class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :specialties, presence: true
  validates :availability, presence: true
  validates :price_per_day, presence: true
end
