# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  User.create(username: Faker::Name.unique.name, password_digest: BCrypt::Password.create(Faker::Creature::Animal.name), name: Faker::Name.unique.name, gender: Faker::Gender.binary_type, address: Faker::Address.city, bio: Faker::String.random, email: Faker::Internet.email, phone_number: Faker::PhoneNumber)
end
