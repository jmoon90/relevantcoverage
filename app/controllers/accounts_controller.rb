class AccountsController < ApplicationController
  def show
    @user = current_user
    @topics = Topic.all
  end

  private

  def purchased_topics
    @user.subscription
  end
end
