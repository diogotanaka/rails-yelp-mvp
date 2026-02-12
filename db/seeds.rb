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

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Sapporo", address: "Moema", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "Pecorino", address: "Vila Olímpia", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Hong he", address: "Paraíso", category: "chinese")
Restaurant.create!(name: "Chez Vous", address: "Moema", category: "belgian")
Restaurant.create!(name: "Modern Mamma", address: "Itaim Bibi", category: "italian")


# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
