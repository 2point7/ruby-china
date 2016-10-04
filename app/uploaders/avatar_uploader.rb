class AvatarUploader < BaseUploader
  version :small do
    process resize_to_fill: [32, 32]
  end

  version :normal do
    process resize_to_fill: [48, 48]
  end

  version :big do
    process resize_to_fill: [96, 96]
  end


  version :large do
    process resize_to_fill: [192, 192]
  end

  def filename
    if super.present?
      "avatar/#{model.id}.jpg"
    end
  end
end
