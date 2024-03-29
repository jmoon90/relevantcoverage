# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
   include CarrierWave::MiniMagick

  storage :aws

  def store_dir
    unless model.respond_to?(:title)
      model_title = model.title.downcase.tr(' ', "_")[0..20]
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}_#{model_title}"
    end
  end

  # Fits thumb for full and mobile web
  version :thumb do
    process :resize_to_fit => [290, 275]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
