# Clear seed
puts "Destroying existing users"
Booking.destroy_all
SpeakerOffering.destroy_all
User.destroy_all

# Speakers
puts "Initializing speakers"

barack = User.new({
  first_name: "Barack",
  last_name: "Obama",
  email: "barack.obama@gmail.com",
  password: "barack",
  password_confirmation: "barack",
  photo: "barack.jpg",
  social_media: "https://twitter.com/barackobama",
  background: "Ancien président des Etats-Unis"
})

barack.save!

nabila = User.new({
  first_name: "Nabilla",
  last_name: "Benattia",
  email: "nabilla@gmail.com",
  password: "nabilla",
  password_confirmation: "nabilla",
  photo: "nabila.jpg",
  social_media: "https://twitter.com/Nabilla",
  background: "Tu ne me connais pas? Nan mais Allô quoi!"
})

nabila.save!

balkany = User.new({
  first_name: "Patrick",
  last_name: "Balkany",
  email: "patrick.balkany@gmail.com",
  password: "balkany",
  password_confirmation: "balkany",
  photo: "balkany.jpg",
  social_media: "https://twitter.com/patrick_balkany",
  background: "Expert en fraude fiscale"
})

balkany.save!

emma = User.new({
  first_name: "Emma",
  last_name: "Watson",
  email: "emma.watson@gmail.com",
  password: "watson",
  password_confirmation: "watson",
  photo: "emma.jpg",
  social_media: "https://twitter.com/emmawatson",
  background: "Actrice, ambassadrice pour le droit des femmes, engagée pour le développement durable."
})

emma.save!

patrick = User.new({
  first_name: "Patrick",
  last_name: "Sébastien",
  email: "patrick.sebastien@gmail.com",
  password: "patrick",
  password_confirmation: "patrick",
  photo: "patrick.jpg",
  social_media: "https://twitter.com/PatSebastien",
  background: "Chanteur, présentateur télé, met l'ambiance dans vos soirées."
})

patrick.save!

#speakers sportifs

laure = User.new({
  first_name: "Laure",
  last_name: "Manaudou",
  email: "laure.manaudou@gmail.com",
  password: "manaudou",
  password_confirmation: "manaudou",
  photo: "laure.jpg",
  social_media: "https://twitter.com/manaudou?lang=fr",
  background: "Championne olympique de natation"
})

laure.save!

yannick = User.new({
  first_name: "Yannick",
  last_name: "Noah",
  email: "yannick@gmail.com",
  password: "noah12",
  password_confirmation: "noah12",
  photo: "yannick.png",
  social_media: "https://www.yannicknoah.com/",
  background: "Tennisman"
})

yannick.save!

didier = User.new({
  first_name: "Didier",
  last_name: "Deschamps",
  email: "didier@gmail.com",
  password: "deschamps",
  password_confirmation: "deschamps",
  photo: "Didier.png",
  social_media: "https://www.lequipe.fr/Football/FootballFicheJoueur4116.html",
  background: "Footballer & entraîneur"
})

didier.save!

brad = User.new({
  first_name: "Brad",
  last_name: "Gushue",
  email: "brad@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  photo: "Brad.png",
  social_media: "https://twitter.com/bradgushue",
  background: "Footballer & entraîneur"
})

didier.save!

rocco = User.new({
  first_name: "Rocco",
  last_name: "Siffredi",
  email: "rocco@gmail.com",
  password: "rocco123",
  password_confirmation: "rocco123",
  photo: "rocco.jpg",
  social_media: "https://twitter.com/Nabilla",
  background: "Spécialiste en équitation"
})

rocco.save!

casimir = User.new({
  first_name: "Casimir",
  last_name: "Gloubi Boulga",
  email: "casimir@gmail.com",
  password: "casimir",
  password_confirmation: "casimir",
  photo: "casimir.jpg",
  social_media: "https://twitter.com/Nabilla",
  background: "L'ami des enfants"
})

casimir.save!


# Organizers
puts "Initializing organizers"

fred = User.new({
  first_name: "Fred",
  last_name: "Durand",
  email: "fred.durand@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  photo: "fred.png",
  company_name: "Best Conferences",
  company_info: "Des conférences exceptionnelles, avec des intervenants de qualité."
})

fred.save!

# Yann Barthès
yannb = User.new({
  first_name: "Yann",
  last_name: "Barthès",
  email: "yann.barthes@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  photo: "yannb-2.jpg",
  company_name: "TMC",
  company_info: "Alimenter le contenu de mes émisions Quotidien"
})

yannb.save!

# Speaker Offering
# Obama
puts "Creating a speaker_offering"
conf_obama = SpeakerOffering.new(
  description: "Ayant présidé deux mandats aux USA, je suis à l'aise pour échanger avec vous sur tous sujets politiques et pour partager mon expérience avec vous.",
  topic: "Politique",
  budget: 500000,
  localisation: "Washington, DC"
  )
conf_obama.user = barack
conf_obama.save!

# Nabilla
conf_nabilla = SpeakerOffering.new(
  description: "Célèbre pour mon apparition dans le monde de la téléréalité, le shampoing n'a pas de secret pour moi. C'est un élément indispensable de notre quotidien, je saurais vous le prouvez",
  topic: "Beauté",
  budget: 2000,
  localisation: "Paris"
  )
conf_nabilla.user = nabila
conf_nabilla.save!

# Patrick
conf_patrick = SpeakerOffering.new(
  description: "Ayant eu l'honneur de présenter de nombreux spectacles tout au long de ma carrière TV, mais aussi avec mes attraits pour la musique, je serais ravi d'échanger avec vous sur ces sujets",
  topic: "Animation",
  budget: 2000,
  localisation: "Paris"
  )
conf_patrick.user = patrick
conf_patrick.save!

# Emma Watson
conf_emma = SpeakerOffering.new(
  description: "Être une femme artiste & engagée, ce n'est pas facile mais je tente de m'imposer dans ce monde. Je suis devenue célèbre en jouant, de son enfance en 2001 à l'âge adulte en 2011, le rôle d'Hermione Granger, l'un des trois rôles principaux dans la série des films Harry Potter. Elle est nommée pour de nombreuses récompenses pour son rôle, et en remporte plusieurs.

Ce n’est qu’après avoir tourné tous les opus de Harry Potter que je me suis attaquée à des rôles très différents. Je me bats pour nos droits en tant que femme, et d'autres ONG.En juillet 2014, elle est nommée ambassadrice de bonne volonté par l'ONU Femmes.

Depuis 2015, je suis plus aujourd'hui plus investie dans la lutte pour le droit des femmes. Ma vie est mon combat comme artiste engagée",
  topic: "Artiste, Ambassadrice",
  budget: 500000,
  localisation: "New York, NY"
  )
conf_emma.user = emma
conf_emma.save!

# Balkany
conf_balkany = SpeakerOffering.new(
  description: "La fraude fiscale a été pour moi une passion de vie. Etant devenu expert dans ce domaine, je saurais vous donner les clés nécessaires pour frauder.",
  topic: "Fiscalité",
  budget: 500000,
  localisation: "Maubeuge"
  )
conf_balkany.user = balkany
conf_balkany.save!

# les sportifs
# Laure Manaudou
conf_laure = SpeakerOffering.new(
  description: "La natation est une passion familiale, que je connais que trop bien. Je serais ravie de parler de perséverance, motivation et accomplissement en votre compagnie.",
  topic: "Sport",
  budget: 5000,
  localisation: "Paris"
  )
conf_laure.user = laure
conf_laure.save!

# Yannick
conf_yannick = SpeakerOffering.new(
  description: "Le tennis a toujours été un sport qui me tennait à coeur. Plus qu'un sport, c'est une culture, un rythme, une vocation.",
  topic: "Sport",
  budget: 5000,
  localisation: "Paris"
  )
conf_yannick.user = yannick
conf_yannick.save!

# Didier Deschamps
conf_didier = SpeakerOffering.new(
  description: "Mon rôle est de pousser le joueur à donner le meilleur d'eux même.Le foot est toute ma vie. D'abord en tant que joueur à ma belle époque, j'ai été champion du monde pour la France à la fois en tant que footballer et coach de l'équipe. C'est une double fierté, et surtout de la perséverance, de la cohésion d'équipe & de la motivation à toute épreuve. Grâce à ma carrière sportive, je pourrais échanger avec vous sur mon sport en particulier mais aussi parler des compétences nécessaires pour un sportif de haut niveau.Avec les Bleus, je gagne la Coupe du monde 1998 et le Championnat d'Europe 2000. Je suis ainsi le premier capitaine français à soulever le trophée de la Coupe du monde, et le deuxième (après Michel Platini) à prendre en mains celui de la compétition continentale.

En 2001, je suis nommé entraîneur de l'AS Monaco, club avec lequel il dispute la finale de Ligue des champions 2004. En 2006, j'entraîne pendant une saison la Juventus reléguée administrativement en Serie B que je fais remonter malgré la sanction de retard de points à l'entame de la saison. Après une pause de deux ans, je reviens à l'OM où je remporte le titre de champion de France 2010 ainsi que trois coupes de la ligue.

Je quitte l'OM en 2012 pour prendre les rênes de l'équipe de France, que j'emmène en quart de finale de la Coupe du monde 2014 au Brésil puis en finale de l'Euro 2016, perdue en prolongation face au Portugal (1-0).",
  topic: "Sport",
  budget: 15000,
  localisation: "Paris"
  )
conf_didier.user = didier
conf_didier.save!

# Brad Gushue
conf_brad = SpeakerOffering.new(
  description: "Le curling, sport encore peu pratiqué en France, est une pratique sportive très minutieuse, qui demande concentration et résistance au froid. Je serais ravi de vous la partager et vous la faire découvrir davantage.",
  topic: "Sport",
  budget: 10000,
  localisation: "Canada"
  )
conf_brad.user = brad
conf_brad.save!

# Rocco
conf_rocco = SpeakerOffering.new(
  description: "Célèbre dans le milieu de l'équitation. Seul étalon, je peux gérer 2, voire 3 juments à la fois.",
  topic: "Sport equestre",
  budget: 3000,
  localisation: "Rome"
  )
conf_rocco.user = rocco
conf_rocco.save!

# Casimir
conf_casimir = SpeakerOffering.new(
  description: "Ami des enfants, je peux également épater les grands.",
  topic: "Dessin animé",
  budget: 1,
  localisation: "Monde Magique"
  )
conf_casimir.user = casimir
conf_casimir.save!

# Booking
puts "Creating a booking"
booking_obama = Booking.new(
  date: DateTime.new(2019, 3, 23))
booking_obama.user = fred
booking_obama.speaker_offering = conf_obama
booking_obama.save!

booking_patrick_sebastien = Booking.new(
  date: DateTime.new(2019, 9, 20))
booking_patrick_sebastien.user = yannb
booking_patrick_sebastien.rating = 4
booking_patrick_sebastien.review = "C'était top! Merci Patrick"
booking_patrick_sebastien.speaker_offering = conf_patrick
booking_patrick_sebastien.save!

booking_nabilla = Booking.new(
  date: DateTime.new(2019, 11, 9))
booking_nabilla.user = yannb
booking_nabilla.speaker_offering = conf_nabilla
booking_nabilla.save!

booking_casimir = Booking.new(
  date: DateTime.new(2019, 12, 25))
booking_casimir.user = yannb
booking_casimir.speaker_offering = conf_casimir
booking_casimir.save!


