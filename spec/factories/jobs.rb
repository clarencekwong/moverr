FactoryBot.define do
  factory :job do
    title { "Fun Job" }
    date  { "2199-02-13 16:00:00" }
    status { "Pending" }
    poster_id { User.last.id }
    furniture_ids { [Furniture.last.id] }
  end
end
