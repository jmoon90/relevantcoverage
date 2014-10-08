class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new

    @subscription.user_id = current_user.id
    @subscription.topic_id = params[:subscription][:topic_id].to_i

    if @subscription.save
      Stripe.api_key = "sk_test_hLd4zEFQpy3cjREHvlfLlgHV"
      token = params[:stripeToken]
      begin
        Stripe::Charge.create(
          :amount => 99, # amount in cents, again
          :currency => "usd",
          :card => token,
          :description => "payinguser@example.com"
        )
        flash[:notice] = "Your card has been charged"
      rescue Stripe::CardError => e
        flash[:notice] = "The card has been declined"
        raise "The card has been declined"
      end
      redirect_to account_path(current_user)
    end
  end

  private
  def subscription_params
    params.require(:subscription).permit(:user_id, :topic_id)
  end
end
