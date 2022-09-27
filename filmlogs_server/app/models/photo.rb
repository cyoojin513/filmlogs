class Photo < ApplicationRecord
  belongs_to :slideshow
  has_one :user, through: :slideshow

  has_one_attached :image

  # validate :image_type

  # def image_url
  #   # Rails.application.routes.url_helpers.rails_blob_path(images, only_path: true)
  #   Rails.application.routes.url_helpers.url_for(image) if image.attached?
  # end

  # private

  # def image_type
  #   if image.attached? == false
  #     errors.add(:image, "are missing")
  #   end
  #   image.each do |image|
  #     if !image.content_type.in?(%(`image/jpeg image/png`))
  #       errors.add(:image, 'Needs to be a JPEG or PNG')
  #     end
  #   end
  # end
end
