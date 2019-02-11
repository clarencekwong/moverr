json.extract! user, :id, :username, :password, :name, :gender, :address, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
