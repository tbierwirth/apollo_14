class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job

  has_many :missions, through: :astronaut_missions
  has_many :astronaut_missions

  def self.avg_age
    Astronaut.average(:age).to_i
  end

end
