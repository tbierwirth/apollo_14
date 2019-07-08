class AstronautMission < ApplicationRecord
  has_many :astronatus
  has_many :missions
end
