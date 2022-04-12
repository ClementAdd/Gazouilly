json.extract! user, :id, :last_name, :first_name, :user_name, :description, :avatar_url, :certified, :city, :country, :created_at, :updated_at
json.url user_url(user, format: :json)
