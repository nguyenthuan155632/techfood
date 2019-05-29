json.extract! food, :id, :display_name, :status, :category_id, :source_id, :user_id, :created_at, :updated_at
json.url food_url(food, format: :json)
