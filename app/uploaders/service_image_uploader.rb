class ServiceImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
