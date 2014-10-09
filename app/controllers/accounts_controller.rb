class AccountsController < ApplicationController
  def show
    @user = current_user
    @subscriptions = @user.subscriptions
    @topics = Topic.all
  end
end
