class Orderdetail < ApplicationRecord
  belongs_to :custompattern, optional: true
  belongs_to :productdetail
end
