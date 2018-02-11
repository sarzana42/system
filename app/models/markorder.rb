class Markorder < ApplicationRecord
  belongs_to :custompattern, optional: true
  belongs_to :markpoint
  belongs_to :markmethod
  belongs_to :outsourcing
end
