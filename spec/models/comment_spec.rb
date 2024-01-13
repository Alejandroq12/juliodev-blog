require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:first_user) { User.create(name: 'Julio', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Developer from El salvador.') }
  let(:first_post) { Post.create(author: first_user, title: 'Hello', text: 'This is my first post') }

  describe '#update_comments_counter' do
    it 'increments the comments counter of the post' do
      expect { Comment.create(user: first_user, post: first_post) }.to change {
                                                                         first_post.reload.comments_counter
                                                                       }.by(1)
    end
  end
end
