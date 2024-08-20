require "open-uri"

puts "Cleaning DB..."
User.destroy_all
Sloop.destroy_all

puts "Creating users..."

file10 = URI.open("https://randomuser.me/api/portraits/men/91.jpg")
john = User.new(
  email: "john@gmail.com",
  password: "password",
  description: "Le vent, les embrunts, la mer...",
  first_name: "John",
  last_name: "Doe",
  phone_number: "+33 6 12 34 56 78",
  age: "26"
)
john.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
john.save!
puts "John created!!"

file11 = URI.open("https://randomuser.me/api/portraits/women/96.jpg")
celia = User.new(
  email: "Celia@gmail.com",
  password: "password",
  description: "Je réve d'un trois mats volant!",
  first_name: "Celia",
  last_name: "Dalia",
  phone_number: "+33 6 87 65 43 21",
  age: "18"
)
celia.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
celia.save
puts "Celia created!!"

file12 = URI.open("https://randomuser.me/api/portraits/men/42.jpg")
thomas = User.new(
  email: "thomas@gmail.com",
  password: "password",
  description: "Naviguer, c'est ma passion. Mon voilier 'Aventure' m'a emmené aux quatre coins du monde.",
  first_name: "Thomas",
  last_name: "Martin",
  phone_number: "+33 6 98 76 54 32",
  age: "34"
)
thomas.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
thomas.save
puts "Thomas created!!"

file13 = URI.open("https://randomuser.me/api/portraits/men/85.jpg")
luc = User.new(
  email: "luc@gmail.com",
  password: "password",
  description: "Je n'ai pas encore de bateau, mais je rêve de parcourir les mers en solitaire.",
  first_name: "Luc",
  last_name: "Bernard",
  phone_number: "+33 6 23 45 67 89",
  age: "29"
)
luc.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
luc.save
puts "Luc created!!"

file14 = URI.open("https://randomuser.me/api/portraits/men/55.jpg")
maxime = User.new(
  email: "maxime@gmail.com",
  password: "password",
  description: "Je suis un artiste-peintre, et mon voilier est mon atelier flottant. J'aime capturer la beauté des océans.",
  first_name: "Maxime",
  last_name: "Dupont",
  phone_number: "+33 6 45 67 89 01",
  age: "41"
)
maxime.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
maxime.save
puts "Maxime created!!"

file15 = URI.open("https://randomuser.me/api/portraits/men/64.jpg")
antoine = User.new(
  email: "antoine@gmail.com",
  password: "password",
  description: "Je rêve de vivre sur un bateau, voguer d'île en île, et découvrir des cultures fascinantes.",
  first_name: "Antoine",
  last_name: "Lemoine",
  phone_number: "+33 6 54 32 10 98",
  age: "25"
)
antoine.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
antoine.save
puts "Antoine created!!"

file16 = URI.open("https://randomuser.me/api/portraits/men/73.jpg")
julien = User.new(
  email: "julien@gmail.com",
  password: "password",
  description: "Mon voilier 'Liberté' est mon foyer. J'ai navigué à travers l'Atlantique et au-delà.",
  first_name: "Julien",
  last_name: "Rousseau",
  phone_number: "+33 6 78 56 34 21",
  age: "39"
)
julien.photo.attach(io: file16, filename: "nes.png", content_type: "image/png")
julien.save
puts "Julien created!!"

file17 = URI.open("https://randomuser.me/api/portraits/women/25.jpg")
marie = User.new(
  email: "marie@gmail.com",
  password: "password",
  description: "J'ai navigué le long des côtes méditerranéennes avec mon bateau 'Sirène'. La mer est ma maison.",
  first_name: "Marie",
  last_name: "Dubois",
  phone_number: "+33 6 34 56 78 90",
  age: "32"
)
marie.photo.attach(io: file17, filename: "nes.png", content_type: "image/png")
marie.save
puts "Marie created!!"

file18 = URI.open("https://randomuser.me/api/portraits/women/48.jpg")
elise = User.new(
  email: "elise@gmail.com",
  password: "password",
  description: "Je rêve d'apprendre la navigation et de voyager en mer, à la découverte de nouveaux horizons.",
  first_name: "Elise",
  last_name: "Moreau",
  phone_number: "+33 6 12 98 76 54",
  age: "27"
)
elise.photo.attach(io: file18, filename: "nes.png", content_type: "image/png")
elise.save
puts "Elise created!!"

file19 = URI.open("https://randomuser.me/api/portraits/women/71.jpg")
isabelle = User.new(
  email: "isabelle@gmail.com",
  password: "password",
  description: "Je suis une photographe passionnée, et mon voilier 'Odyssée' est l'endroit idéal pour capturer des moments uniques.",
  first_name: "Isabelle",
  last_name: "Girard",
  phone_number: "+33 6 67 89 01 23",
  age: "35"
)
isabelle.photo.attach(io: file19, filename: "nes.png", content_type: "image/png")
isabelle.save
puts "Isabelle created!!"

file20 = URI.open("https://randomuser.me/api/portraits/women/54.jpg")
sophie = User.new(
  email: "sophie@gmail.com",
  password: "password",
  description: "Je n'ai pas encore de bateau, mais j'adore l'idée de pouvoir un jour explorer le monde depuis la mer.",
  first_name: "Sophie",
  last_name: "Durand",
  phone_number: "+33 6 89 01 23 45",
  age: "24"
)
sophie.photo.attach(io: file20, filename: "nes.png", content_type: "image/png")
sophie.save!
puts "Sophie created!!"

file21 = URI.open("https://randomuser.me/api/portraits/women/37.jpg")
claire = User.new(
  email: "claire@gmail.com",
  password: "password",
  description: "Le vent dans les voiles, l'océan infini... Je suis passionnée par la mer et je rêve de voyager en bateau.",
  first_name: "Claire",
  last_name: "Lefevre",
  phone_number: "+33 6 90 12 34 56",
  age: "30"
)
claire.photo.attach(io: file21, filename: "nes.png", content_type: "image/png")
claire.save
puts "Claire created!!"

Puts "create sloop"

file22 = URI.open("https://images.pexels.com/photos/1011628/pexels-photo-1011628.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
sloop1 = Sloop.new(
  name: "Josette",
  description: "",
  user: thomas,
  capacity:
)
sloop1.photos.attach(io: file22, filename: "nes.png", content_type: "image/png")
sloop1.save!
puts "Sloop Josette created!!"
