require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'Class Methods' do
    it ".avg_age" do
      neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      bob = Astronaut.create(name: "Bob Beans", age: 27, job: "Engineer")
      scooby = Astronaut.create(name: "Scooby Doo", age: 6, job: "Dog")

      expect(Astronaut.avg_age).to eq((neil.age + bob.age + scooby.age)/3)
    end
  end
end
