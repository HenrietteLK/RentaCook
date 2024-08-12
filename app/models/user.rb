class User < ApplicationRecord
  has_many :bookings
  has_many :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true, format: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :phone_number, presence: true, format: /\A[0-9]{3}\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
