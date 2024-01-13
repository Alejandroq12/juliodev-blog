require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:first_user) { User.create(name: 'Julio', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Developer from El Salvador.', posts_counter: 10) }
  let(:second_user) { User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Developer from Poland.', posts_counter: 0) }
  subject do
    Post.build(author: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 20,
               likes_counter: 22)
  end

  describe 'validations' do
    it 'is invalid without title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it 'title is invalid with more than 250 characters' do
      subject.title = 'a' * 251
      expect(subject).to_not be_valid
    end

    it 'is invalid with a non-integer comments_counter' do
      subject.comments_counter = 1.5
      expect(subject).to_not be_valid
    end

    it 'is invalid with a negative comments_counter' do
      subject.comments_counter = -10
      expect(subject).to_not be_valid
    end

    it 'is invalid with a negative likes_counter' do
      subject.likes_counter = -10
      expect(subject).to_not be_valid
    end

    it 'is invalid with a non-integer likes_counter' do
      subject.likes_counter = 1.5
      expect(subject).to_not be_valid
    end
  end

  describe 'recent_comments' do
    let!(:post_with_comments) do
      Post.create(author: second_user, title: 'Hello', text: 'This is my post', comments_counter: 0, likes_counter: 0)
    end

    before do
      @older_comment = Comment.create(post: post_with_comments, user: second_user, text: 'Hi Julio Quezada!',
                                      created_at: 2.weeks.ago)
      @older_comment2 = Comment.create(post: post_with_comments, user: second_user, text: 'I must hire Julio',
                                       created_at: 1.day.ago)
      @middle_comment = Comment.create(post: post_with_comments, user: second_user, text: 'Because he is a good dev',
                                       created_at: 20.hours.ago)
      @middle_comment2 = Comment.create(post: post_with_comments, user: second_user,
                                        text: 'Check his work in www.quezadajulio.com', created_at: 10.hours.ago)
      @newest_comment = Comment.create(post: post_with_comments, user: second_user, text: 'His stack is React + Rails',
                                       created_at: 1.hour.ago)
    end

    it 'returns the five most recent comments' do
      expect(
        second_user.posts.recent_comments(post_with_comments.id)
      )
        .to match_array([@newest_comment,
                         @middle_comment2, @middle_comment,
                         @older_comment2, @older_comment])
    end
  end

  describe 'update_post_counter' do
    it 'increases the posts_counter of the author' do
      expect do
        Post.create(author: second_user,
                    title: 'New Post', text: 'Content')
      end.to change {
               second_user.reload.posts_counter
             }.by(1)
    end
  end
end
