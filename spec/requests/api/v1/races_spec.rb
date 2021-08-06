# spec/requests/todos_spec.rb  ACOMODAR ESTO AGREGAR GET
require 'rails_helper'

RSpec.describe 'races API', type: :request do
  # initialize test data 

  let!(:races) { create_list(:races, 10) }
  let(:id) { races.first.id }

  # Test suite for GET /races
  describe 'GET /api/v1/races' do
    # make HTTP get request before each example
    before { get '/api/v1/races' }

    it 'returns races' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end