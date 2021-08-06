require 'rails_helper'

RSpec.describe "Phone\'s validaciones", type: :model do
     before do
     	@profile = Profile.new(
     			name:@name,
     			last_name:@last_name,
     			male:@male,
     			user:@user)
     		@number = "04125689744"
     		@phone_type = nil

     end

     context "Phone number" do
     	before do
     		@phone = Phone.new(
     			phone_type:@phone_type)
     	end	

     	 it "shouldn\'t be empty" do
	      @phone.number = ""
	      expect(@phone).to be_invalid    
	    end  #end del it      

	    it "shouldn\'t have more than 11 characters" do
	      @phone.number = "0142574120036"
	      expect(@phone).to be_invalid
	    end

	 end
end