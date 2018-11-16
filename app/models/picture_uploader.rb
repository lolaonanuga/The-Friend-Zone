class PictureUploader < CarrierWave::Uploader::Base
    include Cloudinary::CarrierWave

    process :convert => 'png'
  process :tags => ['user_picture']

  version :standard do
    process :eager => true
    process :resize_to_fill => [100, 150, :north]
  end

  version :thumbnail do
    resize_to_fit(50, 50)
  end





end