require 'faker'

20.times do
  r = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    capacity: rand(5..100),
    rating: rand(0..5),
    type_of_food: Faker::Restaurant.type
  )
  r.save!
end
