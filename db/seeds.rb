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
Restaurant.create!(name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0102030405', category: 'french')
puts "Created Dishoom"

Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0203040506", category: "italian")
puts "Created Pizza East"

Restaurant.create!(name: "Sushi House", address: "10 Tokyo St", phone_number: "0304050607", category: "japanese")
puts "Created Sushi House"

Restaurant.create!(name: "Dragon Wok", address: "45 Beijing Rd", phone_number: "0405060708", category: "chinese")
puts "Created Dragon Wok"

Restaurant.create!(name: "Chez Belgique", address: "5 Brussels Ln", phone_number: "0506070809", category: "belgian")
puts "Created Chez Belgique"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
