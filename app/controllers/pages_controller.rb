class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    # @chef_status = Chef.find(current_user.id).exists?
  end

end
