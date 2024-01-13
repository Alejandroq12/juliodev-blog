require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:first_user) { User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }
  let(:first_post) { Post.create(author: first_user, title: 'Hello', text: 'This is my first post') }

  describe '#update_likes_counter_post' do
    it 'increments the likes counter of the post' do
      expect { Like.create(user: first_user, post: first_post) }.to change { first_post.reload.likes_counter }.by(1)
    end
  end
end
