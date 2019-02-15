# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do
  User.create(username: Faker::Name.unique.name, password_digest: BCrypt::Password.create("password"), name: Faker::Name.unique.name, gender: Faker::Gender.binary_type, address: Faker::Address.state, bio: Faker::Quotes::Shakespeare.king_richard_iii_quote, email: Faker::Internet.unique.email, phone_number: Faker::PhoneNumber.unique.phone_number)
end

User.create(username: "admin", password_digest: BCrypt::Password.create("1"), name: Faker::Name.unique.name, gender: Faker::Gender.binary_type, address: Faker::Address.city, bio: Faker::Quotes::Shakespeare.king_richard_iii_quote, email: Faker::Internet.email, phone_number: Faker::PhoneNumber)

Furniture.create(category: "Sofa")
Furniture.create(category: "Television")
Furniture.create(category: "Bed")
Furniture.create(category: "Chair")
Furniture.create(category: "Shelf")
Furniture.create(category: "Lamp")
Furniture.create(category: "Table")
Furniture.create(category: "Plant(s)")
Furniture.create(category: "Curtain(s)")
Furniture.create(category: "Storage container")
Furniture.create(category: "Other")

20.times do
  Job.create(:title => "Git this #{Faker::House.room}", :date => "2199-02-13 16:00:00", description: Faker::Quotes::Shakespeare.hamlet_quote, :status => "Pending", :poster_id => Random.rand(10), furniture_ids: [Random.rand(1..4), Random.rand(5..8), Random.rand(9..11)])
end
