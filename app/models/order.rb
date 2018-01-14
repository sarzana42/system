class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :deliverymethod
  belongs_to :collectionmethod
  mount_uploader :image, ImageUploader
end
