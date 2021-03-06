class Post < ApplicationRecord
  has_and_belongs_to_many :hashtags
  accepts_nested_attributes_for :hashtags

  belongs_to :user, optional: false

  def repost_count
    # code here
  end

  def repost_id
    # code here
  end

  def get_author_name
    User.find(id = user_id).user_name
  end

  def get_author_picture
    User.find(id = user_id).avatar_url
  end
end
