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
    job.errors[:date].should include("can't be in the past")
  end
end
