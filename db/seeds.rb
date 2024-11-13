puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "07898776666", category: "France")
puts "Created Dishoom"

Restaurant.create!(name: "Pizza Hot", address: "Kinver St, London E8 6JE", phone_number: "02087549047", category: "italian")

Restaurant.create!(name: "Moon", address: "Keysham road, London W13 7ER", phone_number: "02034567890", category: "chinese")

Restaurant.create!(name: "Katsumi", address: "Graham road, London N16 5TE", phone_number: "02082342345", category: "japanese")

Restaurant.create!(name: "New Bridge", address: "Queensbridge road, London E4 9UH", phone_number: "02077895674", category: "belgian")


puts "Finished! Created #{Restaurant.count} restaurants."
