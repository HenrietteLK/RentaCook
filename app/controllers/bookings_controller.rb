class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.chef = Chef.find(params[:chef_id])
    @booking.total_price = @booking.chef.price_per_day * ((@booking.end_date.to_date - @booking.start_date.to_date).to_i + 1)
    # @booking.specialty = current_user
    # faire le calcul pour le price une fois la demo terminee
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "chefs/show", status: :unprocessable
    end
  end

  def index
    @bookings = Booking.all
    @chefs = Chef.all
    @users = User.all
    @user_bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @chefs = Chef.all
    @chef = @booking.chef
  end

  def edit
    @booking = Booking.find(params[:id])
    if params[:status].present?
      @booking.update(status: params[:status])
      redirect_to dashboard_path, notice: "Booking #{params[:status].downcase}."
    end
  end

  def dashboard
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :specialty, :message, :status, :user_id, :chef_id)
  end
  
end
