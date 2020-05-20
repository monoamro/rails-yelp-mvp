# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Destroying all restaurants'
Restaurant.destroy_all
categories = ["chinese", "italian", "japanese", "french", "belgian"]
100.times do
  name = Faker::Restaurant.name
  address = Faker::TvShows::RickAndMorty.location
  index = rand(0..4)
  category = categories[index]
  phone_number = Faker::PhoneNumber.cell_phone
  Restaurant.create(name: name, address: address, category: category, phone_number: phone_number)
  puts "Added #{name}"
end

puts "Done"
