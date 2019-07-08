class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job

  has_many :missions
  has_many :astronaut_missions
end
