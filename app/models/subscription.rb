class Subscription < ActiveRecord::Base
  belongs_to :user,
  inverse_of: :subscriptions

  has_one :topic,
  inverse_of: :subscriptions

  belongs_to :topic,
  inverse_of: :subscriptions

  validates_uniqueness_of :topic_id
end
