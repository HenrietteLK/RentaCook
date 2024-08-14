class ChefsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cheffs = Chef.all

    @users = User.all
    @bookings = Booking.all
    @chefs = Chef.geocoded
    @markers = @chefs.map do |chef|
      {
        lat: chef.latitude,
        lng: chef.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { chef: chef }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @chef = Chef.find(params[:id])
    @booking = Booking.new
  end

  def create
    Chef.address = User.address
    chef.save
  end
end
