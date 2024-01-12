class Post < ApplicationRecord
  belongs_to :user, foreign_key: true
  has_many :likes
  has_many :comments
end
