require 'rails_helper'

RSpec.describe "As a vistor" do
  it "when I visit /astronauts" do
    it "I see a list of astronauts with their info" do
      neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")

      visit '/astronauts'

      expect(page).to have_content(neil.name)
      expect(page).to have_content(neil.age)
      expect(page).to have_content(neil.job)
    end
  end
end
