# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

# puts "Creating restaurants..."
# dishoom = {name: "Dishoom", address: "7 Boundary St, London ", category: 'chinese', phone_number: "0380264756"}
# pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, Milano", category: 'italian', phone_number: "0380264757"}
# strogoff = {name: "Strogoff", address: "7 Boundary St, Kyoto ", category: 'japanese', phone_number: "0380264758"}
# bodega = {name: "Bodega", address: "7 Boundary St, Bruxelles", category: 'belgian', phone_number: "0380262758"}
# lescargot = {name: "Lescargot", address: "7 Boundary St, Dijon", category: 'french', phone_number: "0390264758"}


# [dishoom, pizza_east, strogoff, bodega, lescargot].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"


require "faker"

puts "Creating 10 restaurant ..."
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end
puts " Finished!"
