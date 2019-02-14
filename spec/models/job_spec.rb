require 'rails_helper'

RSpec.describe Job, type: :model do
  it "has a title" do
    job = Job.new
    job.title = "Spectacular Job"
    expect(job.title).to eq("Spectacular Job")
  end

  it 'validates date' do
    job = Job.new
    job.date = "2010-02-13 16:00:00"
    job.valid?
    expect(job.errors[:date]).to include("can't be in the past")
  end

  it "has furniture" do
    furniture = Furniture.create(:category => "couch")
    job = Job.create(:title => "Fun Job", :date => "2199-02-13 16:00:00", :status => "Pending")
    job.furnitures << furniture
    expect(job.furnitures).to include(furniture)
  end
end
