class Source < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :link
  validates_presence_of :publisher
  validates_presence_of :time
  validates_presence_of :date
  validates_presence_of :topic_id

  belongs_to :topic,
  inverse_of: :sources
end
