class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    # redirect_to projects_path if user_signed_in?
  end

  def authenticate_user!
    if user_signed_in?
      redirect_to edit_user_registration_path
    end
  end
end
