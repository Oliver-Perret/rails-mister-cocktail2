class PhotoUploader < CarrierWave::Uploader::Base
    include Cloudinary::CarrierWave

    process convert: 'png'
end
