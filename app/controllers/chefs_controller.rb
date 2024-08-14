class ChefsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chefs = Chef.all
    @users = User.all
    @bookings = Booking.all
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end
end
