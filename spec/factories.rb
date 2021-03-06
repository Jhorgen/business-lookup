FactoryBot.define do

factory :business do
  name { Faker::Company.name }
  business_catagory { Faker::Company.industry }
  text_body { Faker::Company.catch_phrase }
  location
end

factory :location do
  city { Faker::Address.city }
  state { Faker::Address.country }

  factory :location_with_businesses do
    transient do
      businesses_count { 5 }
    end

    after(:create) do |location, evaluator|
        create_list(:business, evaluator.businesses_count, location: location)
      end
    end
  end
end
