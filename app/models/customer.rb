class Customer < ApplicationRecord
    belongs_to :kubun
    has_many :customermaildms
    has_many :maildms, through: :customermaildms
    mount_uploader :image, ImageUploader
end
