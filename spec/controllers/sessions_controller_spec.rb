require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:newbie) {User.create(:username => "Newbie", :password => "Superfun", :name => "Newbie")}

  describe 'post login' do
    it 'logs in with the correct password' do
      post :create, params: {user: {username: newbie.name, password: newbie.password}}
      expect(session[:user_id]).to eq(newbie.id)
    end
  end

  describe 'get logout' do
    it 'logs out' do
      get :destroy
      expect(session[:user_id]).to be_nil
    end
  end
end
