require 'rails_helper'

RSpec.describe Job, type: :model do

  before do
    FactoryBot.create(:user)
    FactoryBot.create(:furniture)
  end

  it "has a title" do
    @job = FactoryBot.create(:job)
    @job.title = "Spectacular Job"
    expect(@job.title).to eq("Spectacular Job")
  end

  it 'validates date' do
    job = Job.new
    job.date = "2010-02-13 16:00:00"
    job.valid?
    expect(job.errors[:date]).to include("can't be in the past")
  end
end
