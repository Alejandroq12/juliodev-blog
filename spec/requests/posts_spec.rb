require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let!(:user) { User.create(id: 1, name: 'Julio', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Developer from El Salvador.') }
  let!(:post) { Post.create(author: user, title: 'Hello', text: 'This is my first post') }

  describe 'GET /index' do
    before do
      get "/users/#{user.id}/posts"
    end

    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'includes the placeholder text for the first post in the response body' do
      expect(response.body).to include('Post #1')
      expect(response.body).to include('Lorem ipsum dolor sit amet')
    end

    it 'includes the placeholder text for the second post in the response body' do
      expect(response.body).to include('Post #2')
      expect(response.body).to include('Lorem ipsum dolor sit amet')
    end
  end

  describe 'GET /show' do
    before do
      get "/users/#{user.id}/posts/#{post.id}"
    end

    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

    it 'includes the placeholder title in the response body' do
      expect(response.body).to include('Post #1 by username')
    end

    it 'includes the placeholder content in the response body' do
      expect(response.body).to include('Lorem ipsum dolor sit amet')
    end
  end
end
