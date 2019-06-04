class AddSomeFieldToFoodInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :food_informations, :district,      :string
    add_column :food_informations, :city,          :string
    add_column :food_informations, :total_review,  :integer
    add_column :food_informations, :total_view,    :integer
    add_column :food_informations, :avg_rating,    :string
    add_column :food_informations, :review_url,    :string
    add_column :food_informations, :album_url,     :string
    add_column :food_informations, :latitude,      :string
    add_column :food_informations, :longitude,     :string
    add_column :food_informations, :booking_url,   :boolean
    add_column :food_informations, :delivery_url,  :boolean
    add_column :food_informations, :location,      :string
    add_column :food_informations, :thumbnail_url, :string
    add_column :food_informations, :detail_url,    :string
  end
end
