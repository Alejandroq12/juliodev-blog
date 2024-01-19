require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let!(:user) { User.create(id: 1, name: 'Julio', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Developer from El Salvador.') }

  describe 'GET /index' do
    before do
      get '/users'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'includes the placeholder text for the user view in the response body' do
      expect(response.body).to include('User name')
      expect(response.body).to include('Number of posts: x')
    end
  end

  describe 'GET /show' do
    before do
      get "/users/#{user.id}"
    end

    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'includes the placeholder title in the response body' do
      expect(response.body).to include('Bio')
    end

    it 'includes the placeholder content in the response body' do
      expect(response.body).to include('Comments: x, Likes: y')
    end
  end
end
