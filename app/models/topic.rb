class Topic < ActiveRecord::Base
  validates_presence_of :name

  has_many :sources,
  inverse_of: :topic

  has_many :subscriptions,
  inverse_of: :topic

  belongs_to :subscription,
  inverse_of: :topic

  has_many :users,
  through: :subscription
end
