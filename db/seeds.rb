# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "Destroying all Clowns"
Offer.destroy_all
User.destroy_all
user = User.create(name: "seed user", email: "sample@gmail.com", password: "1234567")

puts "Creating sample Clowns"

tricks = ["juggle", "handstand", "balloons", "face-paint", "singing", "dad-jokes", "card-tricks", "magic-tricks", "instrument", "dance", "acrobatics", "annoy"]

10.times do
  clown = Offer.new(
    name: Faker::TvShows::SouthPark.character,
    features: tricks.sample + " " + tricks.sample + " " + tricks.sample,
    details: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
    price: rand(50..150)
  )


  clown.user = user
  clown.save
  puts "Clown #{clown.name} - #{clown.save}"
end

puts "The Clowns were created successfully"
