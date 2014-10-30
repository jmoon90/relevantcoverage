CarrierWave.configure do |config|
   config.storage    = :aws
   config.aws_bucket = Rails.application.secrets.aws_directory
   config.aws_acl    = :public_read
   config.asset_host = 'http://example.com'
   config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Rails.application.secrets.aws_access_key_id,
    :aws_secret_access_key  => Rails.application.secrets.aws_secret_access_key,
    :region                 => Rails.application.secrets.aws_region,
    :host                   => 's3.example.com',             # optional, defaults to nil
    :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
end
