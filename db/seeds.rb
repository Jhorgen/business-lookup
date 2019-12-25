class Seed

  def self.begin
    Location.destroy_all
    Business.destroy_all
    Location.reset_pk_sequence
    Business.reset_pk_sequence

    seed = Seed.new
    seed.generate_locations
  end

  def generate_locations
    10.times do |i|
      location = Location.create!(
        city: Faker::Address.city,
        state: Faker::Address.state
      )
      puts "Location #{i}: City is #{location.city} and state is #{location.state}."
      10.times do |x|
        business = location.businesses.create!(
          name: Faker::Company.name,
          business_catagory: Faker::Company.industry,
          text_body: Faker::Company.catch_phrase
        )
        puts "Business #{x}: Name is #{business.name}, Catagory is #{business.business_catagory}, text is #{business.text_body}."
      end
    end
  end
end

Seed.begin
