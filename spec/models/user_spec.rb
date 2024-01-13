require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(name: 'Julio', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Developer from El Salvador.', posts_counter: 10) }

  describe 'validations' do
    it 'is invalid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is invalid with a negative posts_counter' do
      subject.posts_counter = -10
      expect(subject).to_not be_valid
    end

    it 'is invalid with a non-integer posts_counter' do
      subject.posts_counter = 1.5
      expect(subject).to_not be_valid
    end
  end

  describe '.recent_posts' do
    before do
      @older_post = Post.create(author: subject, title: 'Older', text: 'Post', created_at: 1.day.ago)
      @middle_post = Post.create(author: subject, title: 'Middle', text: 'Post', created_at: 1.hour.ago)
      @newest_post = Post.create(author: subject, title: 'Newest', text: 'Post', created_at: 1.minute.ago)
    end

    it 'returns the three most recent posts' do
      expect(User.recent_posts(subject.id)).to match_array([@newest_post, @middle_post, @older_post])
    end
  end
end
