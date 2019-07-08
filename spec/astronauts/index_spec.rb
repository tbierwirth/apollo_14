require 'rails_helper'

RSpec.describe "As a vistor" do
  describe "when I visit /astronauts" do
    it "I see a list of astronauts with their info" do
      neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")

      visit '/astronauts'

      expect(page).to have_content(neil.name)
      expect(page).to have_content(neil.age)
      expect(page).to have_content(neil.job)
    end

    it "I see the average of all astronauts" do
      neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      bob = Astronaut.create(name: "Bob Beans", age: 27, job: "Engineer")
      scooby = Astronaut.create(name: "Scooby Doo", age: 6, job: "Dog")

      visit '/astronauts'

      expect(page).to have_content((neil.age + bob.age + scooby.age) / 3)
    end

  end
end
