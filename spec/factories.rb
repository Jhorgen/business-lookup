FactoryBot.define do
factory :location do
  city { Faker::Movies::HarryPotter.character }
  state { Faker::Movies::HarryPotter.spell }
  destination
end
