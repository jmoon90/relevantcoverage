CarrierWave.configure do |config|
   config.storage    = :aws
   config.aws_bucket = Rails.application.secrets.aws_directory
   config.aws_acl    = :public_read

#need to cange the asset_host
   config.asset_host = 'http://example.com'
   config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    :access_key_id      => Rails.application.secrets.aws_access_key_id,
    :secret_access_key  => Rails.application.secrets.aws_secret_access_key
  }
end
