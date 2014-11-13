class Source < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :title
  validates_presence_of :link
  validates_presence_of :publisher
  validates_presence_of :published_date
  validates_presence_of :topic_id

  belongs_to :topic,
  inverse_of: :sources

  def self.default_image_path(topic)
    "https://s3.amazonaws.com/test-bucket-rc/#{topic.image.versions[:thumb].file.path}"
  end
end
