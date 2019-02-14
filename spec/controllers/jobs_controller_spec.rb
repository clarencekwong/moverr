require 'rails_helper'

RSpec.describe JobsController, type: :controller do
  before do
    Furniture.create
    User.create(:username => "Foo", :password => "Bar", :password_confirmation => "Bar", :name => "Foo")
    Job.create(:title => "Fun Job", :date => "2199-02-13 16:00:00", :status => "Pending", :poster_id => User.last.id, :furniture_ids => [Furniture.last.id])
  end

  describe 'accept job' do
    it 'assigns mover_id on acceptance' do
      patch :accept, params: {
        :id => Job.last.id,
        :session => {user_id: 999}
    }
      expect(session[:user_id]).to eq(Job.last.mover_id)
    end
  end
end
