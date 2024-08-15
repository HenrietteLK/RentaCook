class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard

    @last_booking = current_user.bookings.last
  end

end
