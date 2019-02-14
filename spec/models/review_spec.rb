require 'rails_helper'

RSpec.describe Review, type: :model do
  it "has content" do
    review = Review.new
    review.content = "Niceee"
    expect(review.content).to eq("Niceee")
  end
end
