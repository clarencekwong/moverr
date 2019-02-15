require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe "login" do
    it 'logs in with the correct password' do
      @user = FactoryBot.create(:user)
      post :create, params: {user: {username: @user.username, password: "password"}}
      expect(session[:user_id]).to eq(@user.id)
    end
  end
end
