require 'rails_helper'

RSpec.describe "User\'s name", type: :model do
  before do
    @user = User.new(
     	email: "some@domain.com",
    	password: "P4ssw*rd")
		@name = "Carhil"
 		@last_name = "Fuentes"
 		@male = false 		
  end

  context "User\'s name" do
   	before do
   		@profile = Profile.new(
   			last_name:@last_name,
   			male: @male,
   			user: @user)
   	end

    it "shouldn\'t be empty" do
      @profile.name = ""
      expect(@profile).to be_invalid    
    end

    it "should be valid" do
      @profile.name = "Carhil"
      expect(@profile).to be_valid
    end     

    it "should have more than 1 character" do
      @profile.name = "L"
      expect(@profile).to be_invalid
    end

    it "shouldn\'t have more than 30 characters" do
      @profile.name = "A" * 31
      expect(@profile).to be_invalid
    end

   	it "shouldn\'t be alphanumeric" do
      @profile.name = "Carh!l2"
      expect(@profile).to be_invalid
    end
  end 	 #end context

  context "User\'s last_name" do
   	before do
   		@profile = Profile.new(
   			name:@name,     			
   			male:@male,
   			user:@user
      )
   	end

    it "shouldn\'t be empty" do
      @profile.last_name = ""
      expect(@profile).to be_invalid
    end
    	
    it "should be valid" do
      @profile.last_name = "Fuentes"
      expect(@profile).to be_valid
    end	

    it "should have more than 2 characters" do
      @profile.last_name = "Lu"
      expect(@profile).to be_invalid
    end

   	it "shouldn\'t be alphanumeric" do
      @profile.last_name = "F3ent@s"
      expect(@profile).to be_invalid
    end
  end #end context

	context "User\'s gender" do
   	before do
   		@profile = Profile.new(
   			name:@name,  
   			last_name:@last_name,   			
   			user:@user)     		
   	end

   	it "shouldn\'t be nil" do
      @profile.male = nil
      expect(@profile).to be_invalid
    end
  end #end context
end	    #end RSpec


