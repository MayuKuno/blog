require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_IAM_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_IAM_ACCESS_KEY'],
    region: ENV['AWS_S3_REGION'],
  }

  config.fog_directory  =  ENV['AWS_S3_BUCKET']
  config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/ninefsblog"
  config.cache_storage = :fog
  config.fog_public = false # ←コレ
end



