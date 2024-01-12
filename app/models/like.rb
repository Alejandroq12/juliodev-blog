class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  after_create :update_likes_counter_post

  private

  def update_likes_counter_post
    post.increment!(:likes_counter)
  end
end
