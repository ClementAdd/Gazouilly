class Post < ApplicationRecord
  has_and_belongs_to_many :hashtags
  accepts_nested_attributes_for :hashtags
end
