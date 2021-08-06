require 'rails_helper'
RSpec.describe Ad, type: :model do
          
    it "Prueba piloto" do
        banner = Ad.new(
            title: "Banner1", 
            descripcion: "Banner para prueba")
    end

    it "Presencia de titulo" do
        banner = Ad.new(
            title: "",
            descripcion: "Banner sin titulo"
        )
    end

    it "Presencia de la descripcion" do
        banner = Ad.new(
            title: "Banner sin descripcion",
            descripcion: ""
        )
    end
end

