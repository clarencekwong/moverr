require 'rails_helper'

RSpec.describe Furniture, type: :model do
  it "has a category" do
    @furniture = FactoryBot.create(:furniture)
    expect(@furniture.category).to eq("ottoman")
  end
end
