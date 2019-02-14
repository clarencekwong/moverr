require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a name" do
    user = User.new
    user.name = "Mayor Quimby"
    expect(user.name).to eq("Mayor Quimby")
  end

  let(:foo) {User.create(:username => "Foo",
    :password => "Bar",
    :password_confirmation => "Bar",
    :name => "Foo",
    :phone_number => "5555555555")}

  it "has a unique phone number" do
    user2 = User.new
    user2.phone_number = "5555555555"
    expect(user2.valid?).to eq(false)
  end
end
