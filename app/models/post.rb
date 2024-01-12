class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :likes
  has_many :comments

  after_create :update_post_counter

  def self.recent_comments(post_id)
    find(post_id).comments.order(created_at: :desc).limit(5)
  end

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end
end
