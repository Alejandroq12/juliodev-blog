class User < ApplicationRecord
  has_many :posts, class_name: 'Post', foreign_key: :author_id
  has_many :comments
  has_many :likes
end
