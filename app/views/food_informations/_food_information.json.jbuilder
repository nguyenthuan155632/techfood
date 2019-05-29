json.extract! food_information, :id, :food_id, :description, :detail, :address, :phone_number, :created_at, :updated_at
json.url food_information_url(food_information, format: :json)
