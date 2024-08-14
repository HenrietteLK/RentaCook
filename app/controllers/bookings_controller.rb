class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.save

    redirect_to booking_path(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
    @chefs = Chef.all
    @user = @booking.user
  end

  def index
    @user_bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :specialty, :message, :status, :user_id, :chef_id)
  end
end
