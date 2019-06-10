class FoodInformation < ApplicationRecord
  belongs_to :food, inverse_of: :food_information
end
