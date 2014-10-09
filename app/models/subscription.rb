class Subscription < ActiveRecord::Base
  belongs_to :user,
  inverse_of: :subscriptions

  has_one :topic,
  inverse_of: :subscriptions

  belongs_to :topic,
  inverse_of: :subscriptions
end
