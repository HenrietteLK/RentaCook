class Review < ApplicationRecord
  belongs_to :user
  has_one :chef, through: :booking
  belongs_to :booking

  validates :rating, presence: true
end
