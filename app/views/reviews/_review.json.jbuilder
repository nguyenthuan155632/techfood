json.extract! review, :id, :star, :food_id, :user_id, :created_at, :updated_at
json.url review_url(review, format: :json)
