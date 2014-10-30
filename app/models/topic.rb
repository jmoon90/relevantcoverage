class Topic < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :sources,
  inverse_of: :topic

  has_many :subscriptions,
  inverse_of: :topic

  belongs_to :subscription,
  inverse_of: :topic

  belongs_to :user,
  inverse_of: :topics

  has_many :users,
  through: :subscription

  def self.subscribed?(current_user=nil, topic_id)
    !current_user.topics.select {|x| x.id == topic_id}.blank? unless current_user == nil
  end

  def self.newest_topic_by_user
    Topic.last.user.email
  end
end
