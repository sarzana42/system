CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAJHRCQRO6LILSGRSA',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }

  case Rails.env
    when 'production'
      config.fog_directory = 'rayhopesystem'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/rayhopesystem'

    when 'development'
      config.fog_directory = 'devrayhopesystem'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/devrayhopesystem'

    when 'test'
      config.fog_directory = 'testrayhopesystem'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/testrayhopesystem'
  end
end