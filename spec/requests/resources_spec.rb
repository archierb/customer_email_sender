# frozen_string_literal: true
require 'rails_helper'
RSpec.describe 'Resource CRUD', type: :request do
  let!(:resource) { create(:resource) }
  describe 'GET /resources' do
    before { get '/resources', params: {} }

    it 'returns resources' do
      expect(json).not_to be_empty
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /resources' do
    # valid payload
    let(:valid_attributes ) do
      { name: 'The Last Of Us', photo: 'https://i.pinimg.com/originals/fc/09/5d/fc095d7ed7490eff1e227baf934b8c0c.png', 
        note: 10 }
    end
    let(:invalid_attributes) {
      { name: nil, photo: 'https://i.pinimg.com/originals/fc/09/5d/fc095d7ed7490eff1e227baf934b8c0c.png', note: 'A+' }}

    context 'when the request is valid' do
      before { post '/resources', params: valid_attributes }

      it 'creates a resource' do
        expect(json['name']) == 'The Last Of Us'
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/resources', params: invalid_attributes }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(json['message'])
        expect(/Validation failed: Name can't be blank/)
      end
    end
  end
end

