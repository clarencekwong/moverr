require 'rails_helper'

RSpec.describe JobsController, type: :controller do

  before do
    @user = FactoryBot.create(:user)
    @furniture = FactoryBot.create(:furniture)
    @job = FactoryBot.create(:job)
  end

  describe "GET #index" do
    it "returns HTTP success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  # describe "POST #accept" do
  #   it "associates mover with job" do
  #     patch :accept_path(@job), params: { session: { user_id: @user.id } }
  #     expect(@job.mover_id).to eq(@user.id)
  #   end
  # end
end
