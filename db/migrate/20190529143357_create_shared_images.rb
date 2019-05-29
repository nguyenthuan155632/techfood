class CreateSharedImages < ActiveRecord::Migration[5.2]
  def change
    create_table :shared_images do |t|
      t.string :url, null: false
      t.references :food, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
