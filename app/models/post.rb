class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :likes
  has_many :comments

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_create :update_post_counter

  def recent_comments
    if comments.loaded?
      comments.order(created_at: :desc).limit(5)
    else
      comments.includes(:user).order(created_at: :desc).limit(5)
    end
  end

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end
end
