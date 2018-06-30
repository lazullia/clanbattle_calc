class Character < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :battle

end
