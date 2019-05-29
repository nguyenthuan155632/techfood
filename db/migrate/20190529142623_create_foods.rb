class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :display_name, null: false
      t.string :status, null: false, comment: 'pending, published, unpublished'
      t.references :category, foreign_key: true, null: false
      t.references :source, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
