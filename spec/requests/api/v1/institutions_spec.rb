# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Institutions API', type: :request do
  # initialize test data 
  let!(:institutions) { create_list(:institution, 10) }
  let(:id) { institutions.first.id }

  # Test suite for GET /institutions
  describe 'GET /api/v1/institutions' do
    # make HTTP get request before each example
    before { get '/api/v1/institutions' }

    it 'returns institutions' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end