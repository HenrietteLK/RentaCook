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
    @specialty = JSON.parse(@chef.specialties).join(', ')
    @booking = Booking.new
  end

  def new
    @chef = Chef.new
  end

  def create
    # Chef.address = User.address
    # chef.save

    @chef = Chef.new(chef_params)
    @chef.user = current_user
    @chef.specialties = params[:search][:specialties]
    @chef.user.chef_status = true
    @chef.user.save!
    @chef.save!

    redirect_to chef_path(@chef)
  end

  def edit
    id = current_user.chefs.ids.join.to_i
    @chef = Chef.find(id)
  end

  def update
    @chef = Chef.find(params[:id])

    @chef.update(specialties: params[:search][:specialties].to_s, availability: params[:chef][:availability], price_per_day: params[:chef][:price_per_day], description: params[:chef][:description])

    redirect_to chef_path
  end

  private

  def chef_params
    params.require(:chef).permit(:specialties, :availability, :price_per_day, :description)
  end
end
