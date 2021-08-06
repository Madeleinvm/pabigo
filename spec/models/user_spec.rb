require 'rails_helper'

RSpec.describe "User\'s email", type: :model do
  before do
    password = "P4ssw*rd"
    @user = User.new(
      password: password,
      password_confirmation: password)
  end

  it "should be valid" do
    @user.email = "some@domain.com"
    expect(@user).to be_valid
  end

  it "should have only one \"@\" character" do
    @user.email = "some@domain@name.com"
    expect(@user).to be_invalid
  end

  it "shouldn\'t have more than 255 characters" do
    @user.email = "a@" + "a" * 253
    expect(@user).to be_invalid
  end

  it "shouldn\'t be empty" do
    @user.email = ""
    expect(@user).to be_invalid
  end
end

RSpec.describe "User\'s password", type: :model do
  before do
    @user = User.new(email: "some@domain.com")
  end

  it "should have more than 7 characters" do
    @user.password_confirmation = @user.password = "A1!" + "a" * 4
    expect(@user).to be_invalid
  end

  it "should have less than 33 characters" do
    @user.password_confirmation = @user.password = "A1!" + "a" * 30
    expect(@user).to be_invalid
  end

  it "should match its confirmation" do
    @user.password = "P4ssw*rd"
    @user.password_confirmation = "P4ssw!rd"
    expect(@user).to be_invalid
  end

  it "shouldn\'t be empty" do
    @user.password_confirmation = @user.password = ""
    expect(@user).to be_invalid
  end
end