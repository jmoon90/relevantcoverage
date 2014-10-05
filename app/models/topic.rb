class Topic < ActiveRecord::Base
  validates_presence_of :name

  has_many :sources,
  inverse_of: :topic
end
