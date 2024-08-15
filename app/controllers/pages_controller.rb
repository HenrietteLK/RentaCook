class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def pendings
    @pending_bookings_user = current_user.bookings.where(status: 'Pending')
    @pending_bookings_chef = Booking.where(chef: current_user.chefs.first, status: 'Pending')
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.update(status: 'Accepted')
    redirect_to pendings_path, notice: "Booking accepted."
  end

  def refuse_booking
    @booking = Booking.find(params[:id])
    @booking.update(status: 'Refused')
    redirect_to pendings_path, notice: "Booking refused."
  end

  def dashboard
    @last_booking = current_user.bookings.last
  end
end
