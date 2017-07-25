class Category < ApplicationRecord
  has_many :items

  mount_uploader :avatar, AvatarUploader
end
