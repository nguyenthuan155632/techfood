class ChangeBookingUrlAndDeliveryUrl < ActiveRecord::Migration[5.2]
  def change
    change_column :food_informations, :booking_url, :string
    change_column :food_informations, :delivery_url, :string
  end
end
