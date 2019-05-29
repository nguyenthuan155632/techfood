json.extract! shared_image, :id, :url, :food_id, :user_id, :created_at, :updated_at
json.url shared_image_url(shared_image, format: :json)
