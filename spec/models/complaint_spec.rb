require 'rails_helper'

RSpec.describe "Complaint\'s", type: :model do
  before do
    @complaint = Complaint.new(
      abusive_name: "Juan Pérez",
      description: "Es una pena lo que ha pasado",
      place: "Por el parque del este"
    )
  end

  context "description" do
    it "shouldn\'t be empty" do
      @complaint.description = ""
      expect(@complaint).to be_invalid
    end
  end

  context "place" do
    it "shouldn\'t be empty" do
      @complaint.place = ""
      expect(@complaint).to be_invalid
    end

    it "shouldn\'t have more than 255 characters" do
      @complaint.place = "a" * 256
      expect(@complaint).to be_invalid
    end
  end
end
