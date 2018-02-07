class Productdetail < ApplicationRecord
  belongs_to :product
  validates :product_id, presence: true
  
  def view_color_and_size
    self.colorname + '(' + self.sizename.to_s + ')'
  end
  
end
