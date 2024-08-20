require "open-uri"

puts "Cleaning DB..."
User.destroy_all

puts "Creating users..."
john = User.new(
  email: "john@gmail.com",
  password: "password",
  description: "Le vent, les embrunts, la mer...",
  first_name: "John",
  last_name: "Doe",
  phone_number: "Faker::PhoneNumber.phone_number_with_country_code"
  age: "26"
)
john.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
john.save
