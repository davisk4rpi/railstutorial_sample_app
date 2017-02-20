if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIIVZBELF2JLH4NOQ'],
      :aws_secret_access_key => ENV['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'],
      :region 							 => ENV['Oregon']
    }
    config.fog_directory     =  ENV['davisk4rpi']
  end
end