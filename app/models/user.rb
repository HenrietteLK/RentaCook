class User < ApplicationRecord
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one :chefs

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true#, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :phone_number, presence: true#, format: /(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
