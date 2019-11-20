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

nabila = User.new({
  first_name: "Nabilla",
  last_name: "Benattia-Vergara",
  email: "nabilla@gmail.com",
  password: "nabilla",
  password_confirmation: "nabilla",
  photo: "nabila.jpg",
  social_media: "https://twitter.com/Nabilla",
  background: "Tu me connais pas? Allô quoi!"
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


# Speaker Offering
puts "Creating a speaker_offering"
conf_obama = SpeakerOffering.new(
  title: "Obamacare - Une révolution?",
  topic: "politique",
  budget: 500000,
  localisation: "Washington"
  )
conf_obama.user = barack
conf_obama.save!

# Booking
puts "Creating a booking"
booking_obama = Booking.new(
  date: DateTime.new(2019, 3, 23))
booking_obama.user = fred
booking_obama.speaker_offering = conf_obama
booking_obama.save!
