class Custompattern < ApplicationRecord
  belongs_to :product
  belongs_to :order
  has_many :orderdetails, dependent: :destroy
  accepts_nested_attributes_for :orderdetails, allow_destroy: true
  mount_uploader :custompatternimage, ImageUploader
end
