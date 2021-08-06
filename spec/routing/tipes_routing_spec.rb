require "rails_helper"

RSpec.describe TipesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tipes").to route_to("tipes#index")
    end

    it "routes to #new" do
      expect(:get => "/tipes/new").to route_to("tipes#new")
    end

    it "routes to #show" do
      expect(:get => "/tipes/1").to route_to("tipes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tipes/1/edit").to route_to("tipes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tipes").to route_to("tipes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tipes/1").to route_to("tipes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tipes/1").to route_to("tipes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tipes/1").to route_to("tipes#destroy", :id => "1")
    end
  end
end
