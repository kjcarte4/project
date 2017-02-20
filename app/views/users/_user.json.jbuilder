json.extract! user, :id, :first_name, :last_name, :username, :password, :email, :asu_id, :created_at, :updated_at
json.url user_url(user, format: :json)