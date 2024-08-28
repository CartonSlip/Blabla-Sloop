require "open-uri"

puts "Cleaning DB..."
TravellerRide.destroy_all
Chatroom.destroy_all
TravellerRide.destroy_all
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

file12 = URI.open("https://avatars.githubusercontent.com/u/173157022?v=4")
alex = User.new(
  email: "alex@gmail.com",
  password: "password",
  description: "J'ai toujours eu un esprit de partage et de communauté. J'aime échanger avec les autres, mais je prends aussi plaisir à la tranquillité que m'offrent la campagne et la mer. Mon temps libre est partagé entre mes amis, ma famille et l'océan, où je trouve le calme que je recherche.",
  first_name: "Alex",
  last_name: "Rudeau",
  phone_number: "+33 6 98 76 54 32",
  age: "34"
)
alex.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
alex.save
puts "Alex Rudeau created!!"

file13 = URI.open("https://avatars.githubusercontent.com/u/133055509?v=4")
fabien = User.new(
  email: "fabien@gmail.com",
  password: "password",
  description: "Passionné par la mer, j'ai déjà de nombreux amis avec des voiliers. Même si je n'ai pas encore mon propre bateau, j'adore embarquer, prêter main-forte et participer aux aventures maritimes.",
  first_name: "Fabien",
  last_name: "Lihard",
  phone_number: "+33 6 98 76 54 32",
  age: "34"
)
fabien.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
fabien.save
puts "Fabien created!!"

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

file15 = URI.open("https://avatars.githubusercontent.com/u/121019053?v=4")
david = User.new(
  email: "david@gmail.com",
  password: "password",
  description: "J'ai le goût de l'aventure, et partir en mer me permet de recharger mes batteries sociales. J'aime le calme, les discussions philosophiques et les mathématiques. Mais j'aime bien aussi quand on peut faire la fête.",
  first_name: "David",
  last_name: "Chardon",
  phone_number: "+33 6 98 76 54 32",
  age: "34"
)
david.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
david.save
puts "David created!!"


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

file17 = URI.open("https://avatars.githubusercontent.com/u/174318195?v=4")
thais = User.new(
  email: "thais@gmail.com",
  password: "password",
  description: "Je suis développeuse web et graphiste. J'aime profiter de mon bateau et travailler en voyageant.",
  first_name: "Thaïs",
  last_name: "Hervouët",
  phone_number: "+33 6 98 76 54 32",
  age: "34"
)
thais.photo.attach(io: file17, filename: "nes.png", content_type: "image/png")
thais.save
puts "Thaïs created!!"

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

# Pour Massi
file24 = URI.open("https://avatars.githubusercontent.com/u/116439098?v=4")
massi = User.new(
  email: "massi@gmail.com",
  password: "password",
  description: "Jeune développeur, je viens d'acheter un petit bateau. Je n'ai pas une grande expérience du voyage, et j'aime être accompagné par des personnes ayant de l'expérience. Voyager me permet de travailler tout en profitant de l'ensemble du monde. J'aime apprendre des langues, actuellement j'apprends le japonais.",
  first_name: "Massi",
  last_name: "Mondeguer",
  phone_number: "+33 6 98 76 54 32",
  age: "34"
)
massi.photo.attach(io: file24, filename: "nes.png", content_type: "image/png")
massi.save
puts "Massi created!!"

puts "create sloop"

# ###############sloop######################""""

file22 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/presentation-dun-bateau-trimaran-1024x512_wealuo.jpg?_s=public-apps")
sloop1 = Sloop.new(
  name: "Josette",
  description: "Un trimarant récent, rapide",
  user: alex,
  capacity: "2",
  category: "trimarant"
)
sloop1.photos.attach(io: file22, filename: "nes.png", content_type: "image/png")
sloop1.save!
puts "Sloop Josette created!!"

# Pour Thomas John
file23 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724663643/2006-bavaria-46-cruiser-sail-9394355-20240527071039100-1_XLARGE.3906a204b68c1c3d610ef1057aaa8523_zuurvo.jpg?_s=public-apps")
sloop2 = Sloop.new(
  name: "Le pigeon",
  description: "petite frégate humble et chill",
  user: john,
  capacity: "3",
  category: "Voilier 1 mats"
)
sloop2.photos.attach(io: file23, filename: "sloop_thomas.png", content_type: "image/png")
sloop2.save!
puts "Sloop de Thomas created!!"

# Pour Julien Rousseau
file25 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/8623882_20221213040617666_1_LARGE.d84197b2845c03880e2467953142ba20_o4jfaq.jpg?_s=public-apps")
sloop3 = Sloop.new(
  name: "Black Peral",
  description: "Il est assez vieux, mais toujours bien entretenu",
  user: julien,
  capacity: "1",
  category: "Monocoque"
)
sloop3.photos.attach(io: file25, filename: "sloop_julien.png", content_type: "image/png")
sloop3.save!
puts "Sloop de Julien created!!"

# Pour fabien Dubois
file26 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724155197/le-trois-mats-barque-belem-toutes-voiles-dehors_lgqdjs.jpg?_s=public-apps")
sloop4 = Sloop.new(
  name: "Le belem",
  description: "N'avez vous jamais révé de revivre les voyage d'autrefois?",
  user: thais,
  capacity: "10",
  category: "Voilier ancien de cargaison"
)
sloop4.photos.attach(io: file26, filename: "sloop_marie.png", content_type: "image/png")
sloop4.save!
puts "Sloop de fabien created!!"

# Pour Isabelle Girard
file27 = URI.open("https://res.cloudinary.com/drgeetoka/image/upload/fl_preserve_transparency/v1724663644/tir-de-bateau-%C3%A0-voile-agains-la-lumi%C3%A8re-du-soleil_kzj2it.jpg?_s=public-apps") # Réutilisation de l'image
sloop5 = Sloop.new(
  name: "La franchise",
  description: "Petite ambarcation conviviale",
  user: isabelle,
  capacity: "3",
  category: "Monocoque"
)
sloop5.photos.attach(io: file27, filename: "sloop_isabelle.png", content_type: "image/png")
sloop5.save!
puts "Sloop 5 isabelle created!!"

# ########################## rides #########################""
puts "Creating Rides..."
request1 = Ride.new(
  start_date: "2024-10-01",  # Date de départ
  start_port: "La Rochelle",
  end_date: "2024-10-10",    # Date d'arrivée
  end_port: "Nantes",
  details: "Voyage relaxant avec escales dans des petites criques cachées. Prévoir des vêtements légers et une bonne humeur.",
  sloop: sloop5,
  capacity: sloop5.capacity
)
request1.save!
puts "rides1 created!"

# une ride request en attente pour fabien
ride1 = TravellerRide.new(
 user: fabien,
 ride: request1,
 validate_status: "pending",
 created_at: 1.days.ago
)
ride1.save!

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
request4.save!
puts "rides request3 created!"

# Pour Luc Bernard
request5 = RideRequest.new(
  start_date: "2024-12-01",  # Date de départ
  start_port: "Nantes",
  end_date: "2024-12-10",    # Date d'arrivée
  end_port: "Saint-Malo",
  details: "À la recherche d'une expérience de navigation tranquille le long des côtes bretonnes. Préférences pour des petites marinas et des paysages côtiers magnifiques.",
  user: fabien
)
request5.save!
puts "rides request5 created!"

# Pour Elise Moreau
request6 = RideRequest.new(
  start_date: "2024-12-15",  # Date de départ
  start_port: "Saint-Tropez",
  end_date: "2025-01-05",    # Date d'arrivée
  end_port: "Cannes",
  details: "Noël en mer?? Voyage en mer le long de la Côte d'Azur pour découvrir les charmantes villes côtières et les calanques. ",
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
massi_id = User.find_by(first_name: "Massi").id
fabien_id = User.find_by(first_name: "Fabien").id

review2 = Review.new(
  comment: "L'expérience en mer a été très agréable. Le bateau était confortable et l'itinéraire parfait.",
  rating: 4,
  receiver_id: massi_id,
  poster_id: fabien_id,
  created_at: 2.months.ago
)
review2.save!
puts "review2 created!"

# Commentaire : "Le voyage était bien, mais j'aurais préféré plus de détails sur les escales prévues."
maxime_id = User.find_by(first_name: "Maxime").id
thais_id = User.find_by(first_name: "Thaïs").id

review3 = Review.new(
  comment: "Le voyage était bien, mais j'aurais préféré plus de détails sur les escales prévues.",
  rating: 3,
  receiver_id: maxime_id,
  poster_id: thais_id,
  created_at: 17.months.ago
)
review3.save!
puts "review3 created!"

# Commentaire : "Un excellent voyage avec un hôte très sympathique. Je recommande vivement!"
julien_id = User.find_by(first_name: "Julien").id
david_id = User.find_by(first_name: "David").id

review4 = Review.new(
  comment: "Un excellent voyage avec un hôte très sympathique. Je recommande vivement!",
  rating: 5,
  receiver_id: julien_id,
  poster_id: david_id,
  created_at: 6.months.ago
)
review4.save!
puts "review4 created!"

# Commentaire : "Bien que le bateau soit agréable, la communication pourrait être améliorée."
alex_id = User.find_by(first_name: "Alex").id
john_id = User.find_by(first_name: "John").id

review5 = Review.new(
  comment: "Bien que le bateau soit agréable, la communication pourrait être améliorée.",
  rating: 3,
  receiver_id: alex_id,
  poster_id: john_id,
  created_at: 5.months.ago
)
review5.save!
puts "review5 created!"

# Commentaire : "Voyage agréable avec de belles vues. Cependant, le confort du bateau pourrait être amélioré."
julien_id = User.find_by(first_name: "Julien").id
fabien_id = User.find_by(first_name: "Fabien").id

review6 = Review.new(
  comment: "Voyage agréable avec de belles vues. Cependant, le confort du bateau pourrait être amélioré.",
  rating: 4,
  receiver_id: julien_id,
  poster_id: fabien_id,
  created_at: 1.months.ago
)
review6.save!
puts "review6 created!"

# Commentaire : "Une expérience en mer mémorable. Le bateau était en excellent état et l'équipage très professionnel."
isabelle_id = User.find_by(first_name: "Isabelle").id
david_id = User.find_by(first_name: "David").id

review7 = Review.new(
  comment: "Une expérience en mer mémorable. Le bateau était en excellent état et l'équipage très professionnel.",
  rating: 5,
  receiver_id: isabelle_id,
  poster_id: david_id,
  created_at: 6.days.ago
)
review7.save!
puts "review7 created!"

# Commentaire : "La croisière était agréable, mais il y a eu des problèmes avec la météo."
david_id = User.find_by(first_name: "David").id
thais_id = User.find_by(first_name: "Thaïs").id

review8 = Review.new(
  comment: "La croisière était agréable, mais il y a eu des problèmes avec la météo.",
  rating: 3,
  receiver_id: thais_id,
  poster_id: david_id,
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
fabien_id = User.find_by(first_name: "Fabien").id
claire_id = User.find_by(first_name: "Claire").id

review12 = Review.new(
  comment: "Passager dynamique, à l'écoute et ouvert d'esprit, je recommande!!",
  rating: 4,
  receiver_id: fabien_id,
  poster_id: claire_id,
  created_at: 2.months.ago
)
review12.save!
puts "review12 created!"

# Commentaire : "Super voyage, mais la météo n'était pas toujours clémente. Le reste était parfait!"
massi_id = User.find_by(first_name: "Massi").id
fabien_id = User.find_by(first_name: "Fabien").id

review13 = Review.new(
  comment: "Super voyage, j'ai beaucoup aimer voyager avec Massi. Il n'est pas encore trés à l'aise avec son bateau, mais ça viendra. Le reste était parfait!",
  rating: 4,
  receiver_id: massi_id,
  poster_id: fabien_id,
  created_at: 4.months.ago
)
review13.save!
puts "review13 created!"

# Commentaire : "Bonne organisation et beau bateau, mais le confort était un peu en dessous de mes attentes."
alex_id = User.find_by(first_name: "Alex").id
fabien_id = User.find_by(first_name: "Fabien").id

review14 = Review.new(
  comment: "Je dois avouer que j'ai fait une bonne rencontre avec Fabien. Il a son carractére mais c'est ce qui fait qu'on peut compter sur lui.",
  rating: 3,
  receiver_id: fabien_id,
  poster_id: alex_id,
  created_at: 4.months.ago
)
review14.save!
puts "review14 created!"

# Commentaire : "Voyage agréable avec des escales intéressantes. Le bateau était très propre et bien entretenu."
isabelle_id = User.find_by(first_name: "Isabelle").id
fabien_id = User.find_by(first_name: "Fabien").id

review15 = Review.new(
  comment: "Voyage agréable avec des escales intéressantes. Le bateau était très propre et bien entretenu.",
  rating: 4,
  receiver_id: isabelle_id,
  poster_id: fabien_id,
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
fabien = User.find_by(first_name: "Fabien")

# Récupérer les sloops (bateaux)
sloop1 = Sloop.find_by(name: "Le pigeon")
sloop2 = Sloop.find_by(name: "La franchise")
sloop3 = Sloop.find_by(name: "Le belem")
sloop4 = Sloop.find_by(name: "Black Peral")
sloop5 = Sloop.find_by(name: "Josette")

# Créer les bookmarks
book1 = Bookmark.new(user: isabelle, sloop: sloop1, created_at: Time.now)
book2 = Bookmark.new(user: isabelle, sloop: sloop2, created_at: Time.now)
book3 = Bookmark.new(user: john, sloop: sloop3, created_at: Time.now)
book4 = Bookmark.new(user: john, sloop: sloop4, created_at: Time.now)
book5 = Bookmark.new(user: celia, sloop: sloop5, created_at: Time.now)
book7 = Bookmark.new(user: alex, sloop: sloop2, created_at: Time.now)
book8 = Bookmark.new(user: fabien, sloop: sloop3, created_at: Time.now)
book9 = Bookmark.new(user: fabien, sloop: sloop4, created_at: Time.now)
book10 = Bookmark.new(user: fabien, sloop: sloop4, created_at: Time.now)

# Sauvegarder les bookmarks
book1.save!
book2.save!
book3.save!
book4.save!
book5.save!
book7.save!
book8.save!
book9.save!
book10.save!

puts "10 bookmarks created!"

puts "creation chatroom celia & request1sloop5.user"
chat1 = Chatroom.new(user: celia, ride: request1, skipper_id: request1.sloop.user.id)

chat1.save!
