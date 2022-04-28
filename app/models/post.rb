class Post < ApplicationRecord
  has_and_belongs_to_many :hashtags
  accepts_nested_attributes_for :hashtags

  belongs_to :user, optional: true

  def repost_count
    # code here
  end

  def repost_id
    # code here
  end
end
