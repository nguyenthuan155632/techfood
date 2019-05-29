class Food < ApplicationRecord
  has_one :food_information

  belongs_to :category
  belongs_to :source
  belongs_to :user
end
