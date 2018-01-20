class Orderdetail < ApplicationRecord
  belongs_to :custompattern
  belongs_to :productdetail
end
