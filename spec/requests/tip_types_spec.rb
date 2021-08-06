require 'rails_helper'

RSpec.describe "TipTypes", type: :request do
  describe "GET /tip_types" do
    it "works! (now write some real specs)" do
      get tip_types_path
      expect(response).to have_http_status(200)
    end
  end
end
