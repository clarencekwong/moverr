require 'rails_helper'

RSpec.describe Furniture, type: :model do
  it "has a category" do
    furniture = Furniture.new
    furniture.category = "chair"
    expect(furniture.category).to eq("chair")
  end
end
