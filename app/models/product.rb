class Product < ApplicationRecord
    has_many :productdetails
    belongs_to :maker
    mount_uploader :productpic, ImageUploader
    
end
