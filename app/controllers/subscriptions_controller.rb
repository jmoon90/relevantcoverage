class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new

    @subscription.user_id = current_user.try(:id)
    @subscription.topic_id = params[:subscription][:topic_id].to_i

    if !subscription_exists? && @subscription.save
      flash[:notice] = "You have successfully subscribed to #{Topic.find(@subscription.topic_id).title}"
      redirect_to account_path(current_user)
    else
      mssg = { :error => "There was an error. We could not subscribe you to #{Topic.find(@subscription.topic_id).title}" }
      redirect_to account_path(current_user), :flash => mssg
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:user_id, :topic_id)
  end

  def subscription_exists?
    @topics = []
    if current_user
      current_user.subscriptions.each do |n|
        @topics << n.topic_id
      end
      @topics.include?(@subscription.topic_id)
    end
  end
end
