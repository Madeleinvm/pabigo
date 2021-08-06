require 'rails_helper'

RSpec.describe "New\'s Validations", type: :model do
  before do
    @user = User.new(
      email: "some@domain.com",
      password: "P4ssw*rd")
    @title = "titulo"  
    @content1 = "some content"
    @content2 = "some content 2"
    @visits = 0
    @image = Image.new
  end

  context "New\'s title" do
    before do
      @new = New.new(
      content1: @content1,
      content2: @content2,
      visits: @visits,
      user: @user,
      image:@image)
    end

    it "should have more than 1 characters" do
      @new.title = "A"
      expect(@new).to be_invalid
    end

    it "shouldn\'t have more than 40 characters" do
      @new.title = "a@" + "a" * 39
      expect(@new).to be_invalid
    end

    it "shouldn\'t be empty" do
      @new.title = ""
      expect(@new).to be_invalid
    end
  end

  context "New\'s content 1" do
    before do
      @new = New.new(
      title: @title,
      content2: @content2,
      visits: @visits,
      user: @user,
      image:@image)
    end

  
    it "shouldn\'t be empty" do
      @new.content1 = ""
      expect(@new).to be_invalid
    end
  end

  context "New\'s image" do
    before do
      @new = New.new(
      title: @title,
      content2: @content2,
      visits: @visits,
      user: @user)
    end

  
    it "shouldn\'t be empty" do
      @new.image = ""
      expect(@new).to be_invalid
    end
  end
end  
