class Category < ApplicationRecord
  has_ancestry
  
  has_many :categories_foods
  has_many :foods, through: :categories_foods
end
