class Hashtag < ApplicationRecord
  has_and_belongs_to_many :posts
  accepts_nested_attributes_for :posts
end
