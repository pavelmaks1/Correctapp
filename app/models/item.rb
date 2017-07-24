class Item < ApplicationRecord
  belongs_to :category

  mount_uploaders :images, ImagesUploader
  serialize :images, JSON
end
