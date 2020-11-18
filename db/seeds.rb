# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

r1 = {name: 'Parfums de garrigues', address: "maraussan", phone_number: "0467287656", category: "french"}
r2 = {name: 'Sushi shop', address: "marseille", phone_number: "0413000000", category: "japanese"}
r3 = {name: 'La frite', address: "bruxelles", phone_number: "0768988909", category: "belgian"}
r4 = {name: 'Trattoria', address: "rome", phone_number: "0564765678", category: "italian"}
r5 = {name: 'Saveurs de Chine', address: "paris", phone_number: "0629985115", category: "chinese"}
r6 = {name: 'Le terminus', address: "cruzy", phone_number: "0467381226", category: "french"}

[ r1, r2, r3, r4, r5, r6 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
