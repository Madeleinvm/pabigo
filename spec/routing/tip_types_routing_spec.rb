require "rails_helper"

RSpec.describe TipTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tip_types").to route_to("tip_types#index")
    end

    it "routes to #new" do
      expect(:get => "/tip_types/new").to route_to("tip_types#new")
    end

    it "routes to #show" do
      expect(:get => "/tip_types/1").to route_to("tip_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tip_types/1/edit").to route_to("tip_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tip_types").to route_to("tip_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tip_types/1").to route_to("tip_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tip_types/1").to route_to("tip_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tip_types/1").to route_to("tip_types#destroy", :id => "1")
    end
  end
end
