class Mission < ApplicationRecord
  validates_presence_of :title, :time_in_space

  has_many :missions
  has_many :astronaut_missions
  has_many :astronatus
end
