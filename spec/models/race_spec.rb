require 'rails_helper'

RSpec.describe "Race\'s Validations", type: :model do
  before do
    @user = User.new(
      email: "some@domain.com",
      password: "P4ssw*rd")
    @name = "Race name"
    @height = 1.1
    @weight = 1.1
    @fur = "Long"
    @physical_details = "Physical details"
    @character = "character"
    @care = "Care details"
    @health = "Health details"
    @story = "Race history details"
    @color = "Color of fur"
    @affectivity = 1
    @docility = 1
    @bustling = 1
    @playful = 1
    @grooming = 1
    @hair_loosner = 1
    @kids = 1
    @species = "dog"
    @image = Image.new
  end

  context "Race\'s name" do
    before do
      @race = Race.new(
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 2 characters" do
      @race.name = "AA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.name = ""
      expect(@race).to be_invalid
    end

    it "shouldn\'t have numbers" do
      @race.name = "12345"
      expect(@race).to be_invalid
    end
  end

  context "Race\'s height" do
    before do
      @race = Race.new(
      name: @name,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.height = ""
      expect(@race).to be_invalid
    end

    it "should be greater than 0" do
      @race.height = 0.0
      expect(@race).to be_invalid
    end
  end

  context "Race\'s weight" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.weight = ""
      expect(@race).to be_invalid
    end

    it "should be greater than 0" do
      @race.weight = 0.0
      expect(@race).to be_invalid
    end
  end

  context "Race\'s fur" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 3 characters" do
      @race.fur = "AAA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.fur = ""
      expect(@race).to be_invalid
    end

    it "shouldn\'t have more than 100 characters" do
      @race.fur = "a@" + "a" * 99
      expect(@race).to be_invalid
    end
  end

  context "Race\'s physical details" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 3 characters" do
      @race.physical_details = "AAA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.physical_details = ""
      expect(@race).to be_invalid
    end

    it "shouldn\'t have more than 100 characters" do
      @race.physical_details = "a@" + "a" * 99
      expect(@race).to be_invalid
    end
  end

  context "Race\'s character" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 3 characters" do
      @race.character = "AAA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.character = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s care" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 3 characters" do
      @race.care = "AAA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.care = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s health" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 3 characters" do
      @race.health = "AAA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.health = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s story" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 3 characters" do
      @race.story = "AAA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.story = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s color" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "should have more than 3 characters" do
      @race.color = "AAA"
      expect(@race).to be_invalid
    end

    it "shouldn\'t be empty" do
      @race.color = ""
      expect(@race).to be_invalid
    end

    it "shouldn\'t have more than 100 characters" do
      @race.color = "a" * 201
      expect(@race).to be_invalid
    end

    it "shouldn\'t have numbers" do
      @race.color = "1234"
      expect(@race).to be_invalid
    end
  end

  context "Race\'s affectivity" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.affectivity = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s docility" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.docility = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s bustling" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.bustling = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s playful" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.playful = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s grooming" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      hair_loosner: @hair_loosner,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.grooming = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s hair loosner" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      kids: @kids,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.hair_loosner = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s kids" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      species: @species,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.kids = ""
      expect(@race).to be_invalid
    end
  end

  context "Race\'s species" do
    before do
      @race = Race.new(
      name: @name,
      height: @height,
      weight: @weight,
      fur: @fur,
      physical_details: @physical_details,
      character: @character,
      care: @care,
      health: @health,
      story: @story,
      color: @color,
      affectivity: @affectivity,
      docility: @docility,
      bustling: @bustling,
      playful: @playful,
      grooming: @grooming,
      hair_loosner: @hair_loosner,
      kids: @kids,
      image: @image)
    end

    it "shouldn\'t be empty" do
      @race.species = ""
      expect(@race).to be_invalid
    end
  end

  # context "Race\'s image" do
  #   before do
  #     @race = Race.new(
  #     name: @name,
  #     height: @height,
  #     weight: @weight,
  #     fur: @fur,
  #     physical_details: @physical_details,
  #     character: @character,
  #     care: @care,
  #     health: @health,
  #     story: @story,
  #     color: @color,
  #     affectivity: @affectivity,
  #     docility: @docility,
  #     bustling: @bustling,
  #     playful: @playful,
  #     grooming: @grooming,
  #     hair_loosner: @hair_loosner,
  #     kids: @kids,
  #     species: @species)
  #   end

  #   it "shouldn\'t be empty" do
  #     @race.image = ""
  #     expect(@race).to be_invalid
  #   end
  # end

end

