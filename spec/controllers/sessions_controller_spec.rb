require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

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

  describe "login" do
    it 'logs in with the correct password' do
      user = FactoryBot.build(:user)
      post :create, params: {user: {username: user.username, password: "password"}}
      expect(session[:user_id]).to eq(user.id)
    end
  end
end
