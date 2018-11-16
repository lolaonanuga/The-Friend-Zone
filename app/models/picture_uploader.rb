class PictureUploader < CarrierWave::Uploader::Base
    include Cloudinary::CarrierWave

    process :convert => 'png'
  process :tags => ['user_picture']

  version :standard do
    process :eager => true
    process :resize_to_fill => [200, 300, :north]
  end

  version :thumbnail do
    eager
    resize_to_fit(100, 100)
  end





end