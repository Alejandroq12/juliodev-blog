class User < ApplicationRecord
  has_many :post
  has_many :comment
  has_many :like
end
