class Product < ApplicationRecord
  Cloudinary: :mount_uploader :image, ProductImageUploader
end
