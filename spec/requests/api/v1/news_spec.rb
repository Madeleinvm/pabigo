# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'News API', type: :request do
  # initialize test data 

  let!(:users) { create(:user) }
  let!(:news) { create(:new, user: users) }
  let(:id) { news.id }

  # Test suite for GET /news
  describe 'GET /api/v1/news' do
    # make HTTP get request before each example
    before { get '/api/v1/news' }

    it 'returns news' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /news/:id
  describe 'GET /api/v1/news/:id' do
    before { get "/api/v1/news/#{id}" }

    context 'when the record exists' do
      it 'returns the new' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find New/)
      end
    end
  end

  # Test suite for POST /news
  describe 'POST /api/v1/news' do
    # valid payload
    let(:valid_attributes) { 
      { 
        title: 'Learn Elm', 
        content1: 'blabla',
        content2: 'blabla',
        visits: 1,
        user_id: 1
      } 
    }
    let(:non_valid_attributes) { { title: 'invalid' } }

    context 'when the request is valid' do
      before { post '/api/v1/news', params: valid_attributes }

      it 'creates a todo' do
        expect(json['title']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/news', params: non_valid_attributes }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: User must exist/)
      end
    end
  end

  # Test suite for PUT /news/:id
  describe 'PUT /api/v1/news/:id' do
    let(:valid_attributes) { 
      { 
        title: 'Any name', 
        content: 'any', 
        visits: 5,
        user_id: 2
      } 
    }

    context 'when the record exists' do
      before { put "/api/v1/news/#{id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /news/:id
  describe 'DELETE /api/v1/news/:id' do
    before { delete "/api/v1/news/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end