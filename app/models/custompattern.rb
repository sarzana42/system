class Custompattern < ApplicationRecord
  belongs_to :product
  belongs_to :order
  mount_uploader :custompatternimage, ImageUploader
end
