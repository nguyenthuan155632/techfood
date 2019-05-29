json.extract! user, :id, :name, :email, :department, :phone_number, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
