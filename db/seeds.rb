# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning the DB..."
Flat.destroy_all

Flat.create([
  {
    name: "Cozy Downtown Apartment",
    picture_url: "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?q=80&w=2075&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    address: "123 Main St, Downtown City",
    description: "A cozy apartment located in the heart of the city, perfect for weekend getaways.",
    price_per_night: 75,
    number_of_guests: 2
  },
  {
    name: "Spacious Beachfront Condo",
    picture_url: "https://images.unsplash.com/photo-1568605114967-8130f3a36994?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    address: "456 Ocean Ave, Seaside Town",
    description: "Enjoy a relaxing stay with ocean views in this spacious condo with modern amenities.",
    price_per_night: 120,
    number_of_guests: 4
  },
  {
    name: "Charming Mountain Cabin",
    picture_url: "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    address: "789 Mountain Rd, Highland Park",
    description: "A beautiful cabin tucked in the mountains, ideal for nature lovers and outdoor enthusiasts.",
    price_per_night: 100,
    number_of_guests: 6
  },
  {
    name: "Luxury Penthouse Suite",
    picture_url: "https://images.unsplash.com/photo-1560026301-88340cf16be7?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    address: "101 Skyline Blvd, Uptown District",
    description: "Experience luxury living with stunning city views in this modern penthouse suite.",
    price_per_night: 250,
    number_of_guests: 2
  },
  {
    name: "Quaint Countryside Cottage",
    picture_url: "https://images.unsplash.com/photo-1591474200742-8e512e6f98f8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    address: "202 Farm Rd, Green Valley",
    description: "A peaceful cottage in the countryside, perfect for a relaxing retreat away from the city.",
    price_per_night: 80,
    number_of_guests: 3
  }
])

puts "5 flats have been seeded!"
