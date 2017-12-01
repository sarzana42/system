class Maildm < ApplicationRecord
    has_many :customermaildms
    has_many :customers, through: :customermaildms
end
