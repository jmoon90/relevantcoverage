class AccountsController < ApplicationController
  def show
    @user = current_user
    @topics = Topic.all
  end
end
