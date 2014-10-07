class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def authenticate_user!
    if user_signed_in?
      redirect_to account_path(current_user)
    else
      redirect_to new_user_registration_path
    end
  end
end
