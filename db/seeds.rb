require "open-uri"

puts "Cleaning DB..."
Bookmark.destroy_all
Review.destroy_all
RideRequest.destroy_all
Ride.destroy_all
Sloop.destroy_all
User.destroy_all

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

puts "create sloop"

file22 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/presentation-dun-bateau-trimaran-1024x512_wealuo.jpg?_s=public-apps")
sloop1 = Sloop.new(
  name: "Josette",
  description: "Un trimarant récent, rapide",
  user: thomas,
  capacity: "2",
  category: "trimarant"
)
sloop1.photos.attach(io: file22, filename: "nes.png", content_type: "image/png")
sloop1.save!
puts "Sloop Josette created!!"

# Pour Thomas John
file22 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/voilier-gip-sea-32-1984-3-chambres-32-1815795811_z2dg9x.jpg?_s=public-apps")
sloop1 = Sloop.new(
  name: "Le pigeon",
  description: "petite frégate humble et chill",
  user: john,
  capacity: "3",
  category: "Voilier 1 mats"
)
sloop1.photos.attach(io: file22, filename: "sloop_thomas.png", content_type: "image/png")
sloop1.save!
puts "Sloop de Thomas created!!"

# Pour Maxime Dupont
file23 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/8623882_20221213040615804_1_LARGE.340145c699812070efe55904aab595aa_yyhglj.jpg?_s=public-apps")
sloop2 = Sloop.new(
  name: "La victorieuse",
  description: "Mon voilier à déja remporter le paris dakar",
  user: maxime,
  capacity: "2",
  category: "Fregate"
)
sloop2.photos.attach(io: file23, filename: "sloop_maxime.png", content_type: "image/png")
sloop2.save!
puts "Sloop de Maxime created!!"

# Pour Julien Rousseau
file24 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/8623882_20221213040617666_1_LARGE.d84197b2845c03880e2467953142ba20_o4jfaq.jpg?_s=public-apps")
sloop3 = Sloop.new(
  name: "Black Peral",
  description: "Il est assez vieux, mais toujours bien entretenu",
  user: julien,
  capacity: "1",
  category: "Monocoque"
)
sloop3.photos.attach(io: file24, filename: "sloop_julien.png", content_type: "image/png")
sloop3.save!
puts "Sloop de Julien created!!"

# Pour Marie Dubois
file25 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/le-trois-mats-barque-belem-toutes-voiles-dehors_lgqdjs.jpg?_s=public-apps")
sloop4 = Sloop.new(
  name: "Le belem",
  description: "N'avez vous jamais révé de revivre les voyage d'autrefois?",
  user: marie,
  capacity: "10",
  category: "Voilier ancien de cargaison"
)
sloop4.photos.attach(io: file25, filename: "sloop_marie.png", content_type: "image/png")
sloop4.save!
puts "Sloop de Marie created!!"

# Pour Isabelle Girard
file22 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/voilier-gip-sea-32-1984-3-chambres-32-1815795811_z2dg9x.jpg?_s=public-apps") # Réutilisation de l'image
sloop5 = Sloop.new(
  name: "La franchise",
  description: "Petite ambarcation conviviale",
  user: isabelle,
  capacity: "3",
  category: "Monocoque"
)
sloop5.photos.attach(io: file22, filename: "sloop_isabelle.png", content_type: "image/png")
sloop5.save!
puts "Sloop d'Isabelle created!!"

puts "Creating Rides..."
request1 = Ride.new(
  start_date: "2024-09-01",  # Date de départ
  start_port: "Brest",
  end_date: "2024-09-10",    # Date d'arrivée
  end_port: "Nantes",
  details: "Voyage relaxant avec escales dans des petites criques cachées. Prévoir des vêtements légers et une bonne humeur.",
  sloop: sloop5,
  capacity: sloop5.capacity
)
request1.save!
puts "rides request1 created!"

request2 = Ride.new(
  start_date: "2024-10-05",  # Date de départ
  start_port: "Marseille",
  end_date: "2024-10-15",    # Date d'arrivée
  end_port: "Nice",
  details: "Croisière à travers la Côte d'Azur avec des visites de vignobles locaux. Accueil chaleureux garanti.",
  sloop: sloop1,
  capacity: sloop1.capacity
)
request2.save!
puts "rides request2 created!"

request3 = Ride.new(
  start_date: "2024-11-01",  # Date de départ
  start_port: "La Rochelle",
  end_date: "2024-11-20",    # Date d'arrivée
  end_port: "Bordeaux",
  details: "Aventure automnale avec exploration des îles alentours. Prévoir des vêtements chauds et des jumelles pour observer les oiseaux.",
  sloop: sloop2,
  capacity: sloop2.capacity
)
request3.save!
puts "rides request3 created!"

puts "create rides request ..."

request4 = RideRequest.new(
  start_date: "2024-11-01",  # Date de départ
  start_port: "La Rochelle",
  end_date: "2024-11-20",    # Date d'arrivée
  end_port: "Bordeaux",
  details: "J'en ai mare de la vie parisien, du metro et du speed. A la recherche d'un marin pour me faire découvrir autre chose...",
  user: celia
)
request3.save!
puts "rides request3 created!"

# Pour Luc Bernard
request5 = RideRequest.new(
  start_date: "2024-12-01",  # Date de départ
  start_port: "Nantes",
  end_date: "2024-12-10",    # Date d'arrivée
  end_port: "Saint-Malo",
  details: "À la recherche d'une expérience de navigation tranquille le long des côtes bretonnes. Préférences pour des petites marinas et des paysages côtiers magnifiques.",
  user: luc
)
request5.save!
puts "rides request5 created!"

# Pour Elise Moreau
request6 = RideRequest.new(
  start_date: "2024-12-15",  # Date de départ
  start_port: "Toulon",
  end_date: "2025-01-05",    # Date d'arrivée
  end_port: "Cannes",
  details: "Voyage en mer le long de la Côte d'Azur pour découvrir les charmantes villes côtières et les calanques. Prévoir des moments de détente et des visites culturelles.",
  user: elise
)
request6.save!
puts "rides request6 created!"

# Pour Sophie Durand
request7 = RideRequest.new(
  start_date: "2025-01-10",  # Date de départ
  start_port: "Bordeaux",
  end_date: "2025-01-25",    # Date d'arrivée
  end_port: "La Rochelle",
  details: "Ancien professeur de mathématiques passionné par l'analyse et la cartographie, je rêve de parfaire mes connaissances en géographie maritime. Je cherche une expérience de navigation qui me permettra de découvrir les subtilités des courants océaniques, des routes maritimes et des caractéristiques géographiques des côtes. Mon objectif est de combiner mon amour des chiffres et des cartes avec une aventure en mer enrichissante. Préférences pour des itinéraires éducatifs et des escales dans des lieux d'intérêt géographique.",
  user: sophie
)
request7.save!
puts "rides request7 created!"

puts "create reviews ..."

# Commentaire : "Voyage exceptionnel, très professionnel et bien organisé. Les paysages étaient à couper le souffle."

john_id = User.find_by(first_name: "John").id
celia_id = User.find_by(first_name: "Celia").id

review0 = Review.new(
  comment: "Voyage exceptionnel, très professionnel et bien organisé. Les paysages étaient à couper le souffle.",
  rating: 5,
  receiver_id: john_id,
  poster_id: celia_id,
  created_at: 6.months.ago
)

review0.save!
puts "review created!"

# Commentaire : "L'expérience en mer a été très agréable. Le bateau était confortable et l'itinéraire parfait."
thomas_id = User.find_by(first_name: "Thomas").id
luc_id = User.find_by(first_name: "Luc").id

review2 = Review.new(
  comment: "L'expérience en mer a été très agréable. Le bateau était confortable et l'itinéraire parfait.",
  rating: 4,
  receiver_id: thomas_id,
  poster_id: luc_id,
  created_at: 2.months.ago
)
review2.save!
puts "review2 created!"

# Commentaire : "Le voyage était bien, mais j'aurais préféré plus de détails sur les escales prévues."
maxime_id = User.find_by(first_name: "Maxime").id
antoine_id = User.find_by(first_name: "Antoine").id

review3 = Review.new(
  comment: "Le voyage était bien, mais j'aurais préféré plus de détails sur les escales prévues.",
  rating: 3,
  receiver_id: maxime_id,
  poster_id: antoine_id,
  created_at: 17.months.ago
)
review3.save!
puts "review3 created!"

# Commentaire : "Un excellent voyage avec un hôte très sympathique. Je recommande vivement!"
julien_id = User.find_by(first_name: "Julien").id
marie_id = User.find_by(first_name: "Marie").id

review4 = Review.new(
  comment: "Un excellent voyage avec un hôte très sympathique. Je recommande vivement!",
  rating: 5,
  receiver_id: julien_id,
  poster_id: marie_id,
  created_at: 6.months.ago
)
review4.save!
puts "review4 created!"

# Commentaire : "Bien que le bateau soit agréable, la communication pourrait être améliorée."
marie_id = User.find_by(first_name: "Marie").id
john_id = User.find_by(first_name: "John").id

review5 = Review.new(
  comment: "Bien que le bateau soit agréable, la communication pourrait être améliorée.",
  rating: 3,
  receiver_id: marie_id,
  poster_id: john_id,
  created_at: 5.months.ago
)
review5.save!
puts "review5 created!"

# Commentaire : "Voyage agréable avec de belles vues. Cependant, le confort du bateau pourrait être amélioré."
antoine_id = User.find_by(first_name: "Antoine").id
marie_id = User.find_by(first_name: "Marie").id

review6 = Review.new(
  comment: "Voyage agréable avec de belles vues. Cependant, le confort du bateau pourrait être amélioré.",
  rating: 4,
  receiver_id: antoine_id,
  poster_id: marie_id,
  created_at: 1.months.ago
)
review6.save!
puts "review6 created!"

# Commentaire : "Une expérience en mer mémorable. Le bateau était en excellent état et l'équipage très professionnel."
isabelle_id = User.find_by(first_name: "Isabelle").id
luc_id = User.find_by(first_name: "Luc").id

review7 = Review.new(
  comment: "Une expérience en mer mémorable. Le bateau était en excellent état et l'équipage très professionnel.",
  rating: 5,
  receiver_id: isabelle_id,
  poster_id: luc_id,
  created_at: 6.days.ago
)
review7.save!
puts "review7 created!"

# Commentaire : "La croisière était agréable, mais il y a eu des problèmes avec la météo."
claire_id = User.find_by(first_name: "Claire").id
sophie_id = User.find_by(first_name: "Sophie").id

review8 = Review.new(
  comment: "La croisière était agréable, mais il y a eu des problèmes avec la météo.",
  rating: 3,
  receiver_id: claire_id,
  poster_id: sophie_id,
  created_at: 16.days.ago
)
review8.save!
puts "review8 created!"

# Commentaire : "Voyage bien organisé avec des escales intéressantes. Je reviendrais sans hésiter!"
claire_id = User.find_by(first_name: "Claire").id
isabelle_id = User.find_by(first_name: "Isabelle").id

review9 = Review.new(
  comment: "Voyage bien organisé avec des escales intéressantes. Je reviendrais sans hésiter!",
  rating: 4,
  receiver_id: claire_id,
  poster_id: isabelle_id,
  created_at: 6.months.ago
)
review9.save!
puts "review9 created!"

# Commentaire : "Bon voyage mais le bateau était un peu plus vieux que prévu. Cependant, l'hôte était très accueillant."
john_id = User.find_by(first_name: "John").id
elise_id = User.find_by(first_name: "Elise").id

review10 = Review.new(
  comment: "Bon voyage mais le bateau était un peu plus vieux que prévu. Cependant, l'hôte était très accueillant.",
  rating: 3,
  receiver_id: john_id,
  poster_id: elise_id,
  created_at: 9.months.ago
)
review10.save!
puts "review10 created!"

# Commentaire : "Une expérience en mer magnifique avec des paysages splendides. L'équipage était fantastique."
elise_id = User.find_by(first_name: "Elise").id
maxime_id = User.find_by(first_name: "Maxime").id

review11 = Review.new(
  comment: "Une expérience en mer magnifique avec des paysages splendides. L'équipage était fantastique.",
  rating: 5,
  receiver_id: elise_id,
  poster_id: maxime_id,
  created_at: 1.months.ago
)
review11.save!
puts "review11 created!"

# Commentaire : "Le voyage était agréable mais le bateau avait quelques problèmes techniques."
marie_id = User.find_by(first_name: "Marie").id
claire_id = User.find_by(first_name: "Claire").id

review12 = Review.new(
  comment: "Le voyage était agréable mais le bateau avait quelques problèmes techniques.",
  rating: 3,
  receiver_id: marie_id,
  poster_id: claire_id,
  created_at: 2.months.ago
)
review12.save!
puts "review12 created!"

# Commentaire : "Super voyage, mais la météo n'était pas toujours clémente. Le reste était parfait!"
luc_id = User.find_by(first_name: "Luc").id
john_id = User.find_by(first_name: "John").id

review13 = Review.new(
  comment: "Super voyage, mais la météo n'était pas toujours clémente. Le reste était parfait!",
  rating: 4,
  receiver_id: luc_id,
  poster_id: john_id,
  created_at: 4.months.ago
)
review13.save!
puts "review13 created!"

# Commentaire : "Bonne organisation et beau bateau, mais le confort était un peu en dessous de mes attentes."
thomas_id = User.find_by(first_name: "Thomas").id
sophie_id = User.find_by(first_name: "Sophie").id

review14 = Review.new(
  comment: "Bonne organisation et beau bateau, mais le confort était un peu en dessous de mes attentes.",
  rating: 3,
  receiver_id: thomas_id,
  poster_id: sophie_id,
  created_at: 4.months.ago
)
review14.save!
puts "review14 created!"

# Commentaire : "Voyage agréable avec des escales intéressantes. Le bateau était très propre et bien entretenu."
isabelle_id = User.find_by(first_name: "Isabelle").id
marie_id = User.find_by(first_name: "Marie").id

review15 = Review.new(
  comment: "Voyage agréable avec des escales intéressantes. Le bateau était très propre et bien entretenu.",
  rating: 4,
  receiver_id: isabelle_id,
  poster_id: marie_id,
  created_at: 45.months.ago
)
review15.save!
puts "review15 created!"

puts "create bookmarks"
# Récupérer les utilisateurs
isabelle = User.find_by(first_name: "Isabelle")
john = User.find_by(first_name: "John")
celia = User.find_by(first_name: "Celia")
thomas = User.find_by(first_name: "Thomas")
marie = User.find_by(first_name: "Marie")

# Récupérer les sloops (bateaux)
sloop1 = Sloop.find_by(name: "Le pigeon")
sloop2 = Sloop.find_by(name: "La franchise")
sloop3 = Sloop.find_by(name: "Le belem")
sloop4 = Sloop.find_by(name: "Black Peral")
sloop5 = Sloop.find_by(name: "La victorieuse")

# Créer les bookmarks
book1 = Bookmark.new(user: isabelle, sloop: sloop1, created_at: Time.now)
book2 = Bookmark.new(user: isabelle, sloop: sloop2, created_at: Time.now)
book3 = Bookmark.new(user: john, sloop: sloop3, created_at: Time.now)
book4 = Bookmark.new(user: john, sloop: sloop4, created_at: Time.now)
book5 = Bookmark.new(user: celia, sloop: sloop5, created_at: Time.now)
book6 = Bookmark.new(user: celia, sloop: sloop1, created_at: Time.now)
book7 = Bookmark.new(user: thomas, sloop: sloop2, created_at: Time.now)
book8 = Bookmark.new(user: marie, sloop: sloop3, created_at: Time.now)
book9 = Bookmark.new(user: marie, sloop: sloop4, created_at: Time.now)
book10 = Bookmark.new(user: marie, sloop: sloop5, created_at: Time.now)

# Sauvegarder les bookmarks
book1.save!
book2.save!
book3.save!
book4.save!
book5.save!
book6.save!
book7.save!
book8.save!
book9.save!
book10.save!

puts "10 bookmarks created!"
