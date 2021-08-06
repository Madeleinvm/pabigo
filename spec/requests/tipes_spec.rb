require 'rails_helper'

RSpec.describe "Tipes", type: :request do
  describe "GET /tipes" do
    it "works! (now write some real specs)" do
      get tipes_path
      expect(response).to have_http_status(200)
    end
  end
end
