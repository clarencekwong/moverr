require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a name" do
    user = User.new
    user.name = "Mayor Quimby"
    expect(user.name).to eq("Mayor Quimby")
  end
end
