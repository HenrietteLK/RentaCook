class BookingsController < ApplicationController
  def create
    @chef = Chef.find(params[:id])
    @booking = Booking.new(booking_params)
    @booking.save

    redirect_to chef_path(@chef)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :specialty, :message, :status, :user_id, :chef_id)
  end
end
