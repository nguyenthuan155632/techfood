json.extract! owner_image, :id, :url, :food_id, :user_id, :created_at, :updated_at
json.url owner_image_url(owner_image, format: :json)
