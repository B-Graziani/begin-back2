# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning restaurants..."
Restaurant.destroy_all

puts "creating restaurants"
Restaurant1 = { name: "Mcdonald", rating: "1", address: "223 avenue de clichy"}
Restaurant2 = { name: "Tour d'argent", rating: "5", address: "1 avenue de charles de gaule"}
Restaurant3 = { name: "Chez Wung", rating: "3", address: "Paris 13, avenue du dragon"}

Restaurants  = []

[ Restaurant1, Restaurant2, Restaurant3].each_with_index do |attributes, index|
  restaurant = Restaurant.create!(attributes)
  Restaurants << restaurant
end





