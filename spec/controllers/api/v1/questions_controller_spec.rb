require 'rails_helper'

RSpec.describe Api::V1::QuestionsController do
  describe 'GET Questions Index' do
    let!(:user)        { create(:user) }
    let!(:token)       { create(:access_token, resource_owner_id: user.id) }
    let!(:questions)   { create_list(:question, 5, user: user) }
    before do
      allow(controller).to receive(:doorkeeper_token) {token}
    end

    it 'should return a successful response' do
      get :index, format: :json
      expect(response.status).to eq(200)
    end

    it 'should return all the questions' do
      get :index, format: :json
      expect(assigns[:questions].size).to eq 5
    end

    it 'should show question' do
      get :show, params: { id: questions.first.id }
      expect(response.status).to eq(200)
    end
  end
end
