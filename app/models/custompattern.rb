class Custompattern < ApplicationRecord
  belongs_to :product
  belongs_to :order
  has_many :orderdetails, dependent: :destroy
  accepts_nested_attributes_for :orderdetails, allow_destroy: true, reject_if: :all_blank
  has_many :markorders, dependent: :destroy
  accepts_nested_attributes_for :markorders, allow_destroy: true, reject_if: :all_blank
  mount_uploader :custompatternimage, ImageUploader
end
