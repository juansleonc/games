require 'spec_helper'
require 'rack/test'
require_relative '../../../games/puzzle/api'

RSpec.describe Games::PuzzleApi, type: :request do
  include Rack::Test::Methods

  def app
    Games::PuzzleApi
  end

  let(:user_id) { '1234' }

  describe 'GET /puzzle/:user_id' do
    it 'returns a 200 status and initializes a new puzzle board' do
      get "/puzzle/#{user_id}"
      expect(last_response.status).to eq(200)
      response_data = Oj.load(last_response.body)
      expect(response_data[:board].size).to eq(4)
      expect(response_data[:board].flatten.size).to eq(16)
    end
  end

  describe 'POST /puzzle/:user_id/move' do
    before do
      post "/puzzle/#{user_id}/move", direction: 'up'
    end

    context 'with a valid direction' do
      it 'returns a 200 status and updates the puzzle board' do
        post "/puzzle/#{user_id}/move", direction: 'down'
        expect(last_response.status).to eq(200)
        response_data = Oj.load(last_response.body)
        expect(response_data[:board].size).to eq(4)
        expect(response_data[:board].flatten.size).to eq(16)
        expect(response_data[:solved]).to be_in([true, false])
      end
    end

    context 'with an invalid direction' do
      it 'returns a 400 status and an error message' do
        post "/puzzle/#{user_id}/move", direction: 'invalid_direction'
        expect(last_response.status).to eq(400)
        response_data = Oj.load(last_response.body)
        expect(response_data['error']).to eq('Invalid direction')
      end
    end
  end
end
