class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
    @users = User.all
    @bookings = Booking.all
  end
end
