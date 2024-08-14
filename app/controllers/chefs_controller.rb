class ChefsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chefs = Chef.all
    @users = User.all
    @bookings = Booking.all
    @markers = @chefs.geocoded.map do |chef|
      {
        lat: chef.latitude,
        lng: chef.longitude
      }
    end
  end

  def show
    @chef = Chef.find(params[:id])
  end

  def create
    Chef.address = User.address
    chef.save
  end
end
