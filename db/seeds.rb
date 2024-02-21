# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "021545654", category: "japanese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",phone_number: "+021655654", category: "italian"}
jolie = {name: "Jolie", address: "Münchner Freiheit, München", phone_number: "021545654", category: "french"}
ito = {name: "ITO", address: "Kraepelinstr 3, München", phone_number: "021545654", category: "belgian"}
china_town = {name: "China Town", address: "Hauptbahnhof 22, München", phone_number: "+021545654", category: "chinese"}

[dishoom, pizza_east, jolie, ito, china_town].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
