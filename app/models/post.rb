class Post < ApplicationRecord
  has_many :comments
  has_many :tags, through: :post_tags
  belongs_to :moderator
end
