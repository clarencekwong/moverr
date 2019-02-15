require 'rails_helper'

RSpec.describe FurnituresController, type: :controller do

  before do
    @user = FactoryBot.create(:user)
    @furniture = FactoryBot.create(:furniture)
  end

  describe "associations" do
    it "takes a job" do
      @job = FactoryBot.create(:job)
      expect(@furniture.job_ids.last).to eq(@job.id)
    end
  end
end
