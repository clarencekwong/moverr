FactoryBot.define do
  factory :user do
    username { "John" }
    name  { "John" }
    password { "password" }
    password_confirmation { "password" }
    gender { "bot" }
    address { "678 Street St" }
    bio { "Sing, Muse, of the anger of Achilles"}
    phone_number { "5555555555" }
    email { "john@john.john" }
  end
end
