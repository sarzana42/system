class Product < ApplicationRecord
    has_many :productdetails, dependent: :destroy
    belongs_to :maker
    mount_uploader :productpic, ImageUploader
    
end
