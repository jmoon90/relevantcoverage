class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def authenticate_user!
    if user_signed_in?
      redirect_to account_path(current_user)
    end
  end
end
