require 'rails_helper'

RSpec.describe "Address validaciones", type: :model do
     before do
     	@profile = Profile.new(
     			name:@name,
     			last_name:@last_name,
     			male:@male,
     			user:@user)
		@line1 = "Calle sol"
 		@line2 = "Avenida luna"
 		@zip_code = "0102"  				
     end

     context "Address line 1" do
     	before do
     		@address = Address.new(     			
     			line2:@line2,
     			zip_code:@zip_code)
     	end	 
     

		it "should have more than 4 characters" do
	      @address.line1 = "Coch"
	      expect(@address).to be_invalid
	    end

	    it "shouldn\'t have more than 30 characters" do
	      @address.line1 = "Ci" + "l" * 29
	      expect(@address).to be_invalid
	    end	    
	 end # end del context   

	  context "Address line 2" do
     	before do
     		@address = Address.new(     			
     			line1:@line1,
     			zip_code:@zip_code)
     	end	



		it "should have more than 4 characters" do
	      @address.line2 = "Coch"
	      expect(@address).to be_invalid
	    end

	    it "shouldn\'t have more than 30 characters" do
	      @address.line2 = "Ci" + "l" * 29
	      expect(@address).to be_invalid
	    end	
     end #end del context

     context "Address codigo postal" do
     	before do
     		@address = Address.new(     			
     			line1:@line1,
     			line2:@line2,)
     	end	     	


	    it "shouldn\'t have more than 4 characters" do
	      @address.zip_code = "10658"
	      expect(@address).to be_invalid
	    end		 	  
	 
    end # end del context	
end #end del 
