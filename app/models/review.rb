class Review < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  belongs_to :booking

  validates :rating, presence: true
end
