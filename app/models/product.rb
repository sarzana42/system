class Product < ApplicationRecord
    has_many :productdetails
    mount_uploader :productpic, ImageUploader
    
end
