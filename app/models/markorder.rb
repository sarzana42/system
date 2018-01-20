class Markorder < ApplicationRecord
  belongs_to :custompattern
  belongs_to :markpoint
  belongs_to :markmethod
  belongs_to :outsourcing
end
