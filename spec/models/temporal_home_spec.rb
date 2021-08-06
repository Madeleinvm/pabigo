require 'rails_helper'

RSpec.describe "Temporal Home\'s", type: :model do
  before do
    @temporal_home = TemporalHome.new(
      id_card: "V12345678",
      dog: true,
      pet_characteristics: "Este perro es bastante bueno",
      home_type: "Apartamento",
      existing_pets: "Tengo 2 perros, un gato y una anaconda",
      kind_of_help: "Techo y alimento",
      protection_duration: "10/10/2020",
      reference_full_name: "Juan Pérez",
      reference_phone: "0416 555 5555",
      reference_id_card: "87654321"
    )
  end

  context "id_card" do
    it "shouldn\'t be empty" do
      @temporal_home.id_card = ""
      expect(@temporal_home).to be_invalid
    end

    it "shouldn\'t have more than 15 characters" do
      @temporal_home.kind_of_help = "a" * 16
      expect(@temporal_home).to be_invalid
    end
  end

  context "pet_characteristics" do
    it "shouldn\'t be empty" do
      @temporal_home.pet_characteristics = ""
      expect(@temporal_home).to be_invalid
    end
  end

  context "home_type" do
    it "shouldn\'t be empty" do
      @temporal_home.home_type = ""
      expect(@temporal_home).to be_invalid
    end
  end

  context "existing_pets" do
    it "shouldn\'t be empty" do
      @temporal_home.existing_pets = ""
      expect(@temporal_home).to be_invalid
    end
  end

  context "kind_of_help" do
    it "shouldn\'t be empty" do
      @temporal_home.kind_of_help = ""
      expect(@temporal_home).to be_invalid
    end

    it "shouldn\'t have more than 255 characters" do
      @temporal_home.kind_of_help = "a" * 256
      expect(@temporal_home).to be_invalid
    end
  end

  context "protection_duration" do
    it "shouldn\'t be empty" do
      @temporal_home.protection_duration = ""
      expect(@temporal_home).to be_invalid
    end
  end

  context "reference_id_card" do
    it "shouldn\'t be empty" do
      @temporal_home.id_card = ""
      expect(@temporal_home).to be_invalid
    end

    it "shouldn\'t have more than 15 characters" do
      @temporal_home.kind_of_help = "a" * 16
      expect(@temporal_home).to be_invalid
    end
  end

  context "reference_full_name" do
    it "shouldn\'t be empty" do
      @temporal_home.kind_of_help = ""
      expect(@temporal_home).to be_invalid
    end

    it "shouldn\'t have more than 255 characters" do
      @temporal_home.kind_of_help = "a" * 256
      expect(@temporal_home).to be_invalid
    end
  end

  context "reference_phone" do
    it "shouldn\'t be empty" do
      @temporal_home.kind_of_help = ""
      expect(@temporal_home).to be_invalid
    end
  end
end
