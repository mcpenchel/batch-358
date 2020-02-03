# This is where you can create initial data for your app.
require "faker"


100.times do |i|
  beer = Beer.new(name: Faker::Beer.name, style: Faker::Beer.style, degrees_of_alcohol: Faker::Beer.alcohol, rating: rand(0..5))
  beer.save!
end
