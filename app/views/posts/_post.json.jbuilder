json.extract! post, :id, :text, :repost_count, :repost_id, :like_counter, :reply_at, :out_url, :created_at, :updated_at
json.url post_url(post, format: :json)
