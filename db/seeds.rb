# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# # #   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users...'
users_attributes = [
  {
    first_name: "Bob",
    last_name: "Smith",
    age: 25,
    gender: "M",
    bio: "Ingénieur en semaine, pleureur en funerailles le WE",
    photo: "https://images.unsplash.com/photo-1494368308039-ed3393a402a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=813&q=80",
    skills: "pleureur",
    email: "bob@gmail.com",
    password: "123456"
  },
  {
    first_name: "Tina",
    last_name: "Smith",
    age: 5,
    gender: "F",
    bio: "Je suis une petite fille toute tranquille",
    photo: "https://images.unsplash.com/photo-1516668557604-c8e814fdb184?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80",
    skills: "sympa",
    email: "tina@gmail.com",
    password: "123456"
  },
  {
    first_name: "Zoey",
    last_name: "Smith",
    age: 30,
    gender: "F",
    bio: "J'ai besoin d'arrondir mes fins de mois, je propose mes services sur HumanBnB",
    photo: "https://images.unsplash.com/photo-1530558439338-d7cbd9b8dd0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    skills: "sympa",
    email: "zoey@gmail.com",
    password: "123456"
  }
]

puts 'Creating services...'
services_attributes = [
  {
    title: "Pleureur en funerailles",
    city: "Lyon",
    event_type: "Funerailles",
    service_image: "https://res.cloudinary.com/nvegar/image/upload/v1550785058/HumanBnB/1.jpg",
    price: 50,
    details: "Je peux pleurer pandant des heures sans me fatiguer. Larmes de qualité",
    user_id: 1
    },
  {
    title: "Enfant turbulent",
    city: "Paris",
    event_type: "Anniversaires",
    service_image: "https://res.cloudinary.com/nvegar/image/upload/v1550785058/HumanBnB/3.jpg",
    price: 40,
    details: "J'ai de l'énergie à dépenser dans l'anniversaire de votre enfant. Amusement garanti",
    user_id: 2
    },
  {
    title: "Femme accompagnante au mariage",
    city: "Marseille",
    event_type: "Mariage",
    service_image: "https://res.cloudinary.com/nvegar/image/upload/v1550833357/weddingtoast.jpg",
    price: 100,
    details: "Soyez l'envie de vos connaissances avec votre nouvelle copine",
    user_id: 3
    }
]

puts "ok"
