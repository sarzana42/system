class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :deliverymethod
  belongs_to :collectionmethod
  has_many :custompatterns, dependent: :destroy
  mount_uploader :image, ImageUploader
end
