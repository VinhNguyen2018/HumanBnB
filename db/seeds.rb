# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# # #   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all users"

User.destroy_all

puts "destroy all Services"

Service.destroy_all

puts "destroy all Bookings"

Booking.destroy_all

puts "destroy all Reviews"

Review.destroy_all


puts 'Creating users...'

url_bob = "https://images.unsplash.com/photo-1494368308039-ed3393a402a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=813&q=80"
bob = User.new(
    first_name: "Bobby",
    last_name: "Smith",
    age: 25,
    gender: "M",
    bio: "Ingénieur en semaine, pleureur en funerailles le WE",
    skills: "pleureur",
    email: "bob@gmail.com",
    password: "123456"
  )
bob.remote_photo_url = url_bob
bob.save!


url_tina = "https://images.unsplash.com/photo-1516668557604-c8e814fdb184?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80"
tina = User.new(
    first_name: "Tina",
    last_name: "Smith",
    age: 5,
    gender: "F",
    bio: "Je suis une petite fille toute tranquille",
    skills: "sympa",
    email: "tina@gmail.com",
    password: "123456"
  )
tina.remote_photo_url = url_tina
tina.save!

url_zoey = "https://images.unsplash.com/photo-1530558439338-d7cbd9b8dd0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"
zoey= User.new(
    first_name: "Zoey",
    last_name: "Smith",
    age: 30,
    gender: "F",
    bio: "J'ai besoin d'arrondir mes fins de mois, je propose mes services sur HumanBnB",
    skills: "sympa",
    email: "zoey@gmail.com",
    password: "123456"
  )
zoey.remote_photo_url = url_zoey
zoey.save!



puts 'Creating services...'

url_service1 = "https://res.cloudinary.com/nvegar/image/upload/v1550785058/HumanBnB/1.jpg"
service1 = Service.new(
    title: "Pleureur en funerailles",
    city: "Lyon",
    event_type: "Funerailles",
    price: 50,
    details: "Je peux pleurer pandant des heures sans me fatiguer. Larmes de qualité.",
    user: User.first)
service1.remote_service_image_url = url_service1
service1.save!

url_service2 = "https://res.cloudinary.com/nvegar/image/upload/v1550785058/HumanBnB/3.jpg"
service2 = Service.new(
    title: "Enfant turbulent",
    city: "Paris",
    event_type: "Anniversaires",
    price: 40,
    details: "J'ai de l'énergie à dépenser dans l'anniversaire de votre enfant. Amusement garanti",
    user: User.second)
service2.remote_service_image_url = url_service2
service2.save!

url_service3 = "https://res.cloudinary.com/nvegar/image/upload/v1550833357/weddingtoast.jpg"
service3 = Service.new(
    title: "Femme accompagnante au mariage",
    city: "Marseille",
    event_type: "Mariage",
    price: 100,
    details: "Soyez l'envie de vos connaissances avec votre nouvelle copine",
    user: User.last)
service3.remote_service_image_url = url_service3
service3.save!


puts "ok"
