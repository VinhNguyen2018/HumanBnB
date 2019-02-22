# # # This file should contain all the record creation needed to seed the database with its default values.
# # # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# # #
# # # Examples:
# # #
# # #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# # #   Character.create(name: 'Luke', movie: movies.first)

# puts 'Cleaning database...'
# User.destroy_all
# Service.destroy_all
# Booking.destroy_all

# # puts 'Creating reviews...'
# # 5.times do
# #       review = Review.new(
# #         rating: rand(0..5),
# #         content: Faker::Lorem.paragraph,
# #         min_cover: rand(2...5)
# #         )
# #       review.save!
# # end

# users_attributes = [
#   {
#     first_name: "Bob",
#     last_name: "Smith",
#     age: 25, gender: "M",
#     bio: "Lorem ipsum dolor sit amet",
#     image_url: "https://images.unsplash.com/photo-1494368308039-ed3393a402a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=813&q=80",
#     skills: "pleureur",
#     email: "bob@gmail.com",
#     password: "123456"
#   },
#   {
#     first_name: "Tina",
#     last_name: "Smith",
#     age: 5, gender: "F",
#     bio: "Lorem ipsum dolor sit amet",
#     image_url: "https://images.unsplash.com/photo-1516668557604-c8e814fdb184?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80",
#     skills: "rigolotte",
#     email: "tina@gmail.com",
#     password: "123456"
#   },
#   {
#     first_name: "Zoey",
#     last_name: "Smith",
#     age: 5, gender: "F",
#     bio: "Lorem ipsum dolor sit amet",
#     image_url: "https://images.unsplash.com/photo-1530558439338-d7cbd9b8dd0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
#     skills: "sympa",
#     email: "zoey@gmail.com",
#     password: "123456"
#   }
# ]

# User.create!(users_attributes)
# puts 'Finished users!'

# # puts 'Creating services...'
# # services_attributes = [
# #   {
# #     title: "Pleureur en funerailles",
# #     city: "Paris",
# #     event_type: "Funerailles",
# #     price: 50,
# #     details: "Je peux pleurer pandant des heures sans me fatiguer. Larmes de qualité",
# #     user_id: 1
# #     },
# #   {
# #     title: "Enfant turbulents",
# #     city: "Paris",
# #     event_type: "Anniversaires",
# #     price: 40,
# #     details: "J'ai de l'énergie à dépenser",
# #     user_id: 2
# #     },
# #   {
# #     title: "Femme accompagnante au mariage",
# #     city: "Paris",
# #     event_type: "Mariage",
# #     price: 100,
# #     details: "Soyez l'envie de vos connaissances avec votre copine",
# #     user_id: 3
# #     }
# # ]

# # Service.create!(services_attributes)

# # puts 'Finished services!'

# # puts 'Finished!'
