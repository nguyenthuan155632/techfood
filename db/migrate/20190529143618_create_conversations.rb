class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.string :channel, null: false
      t.string :mode, null: false, comment: 'public, private'
      t.string :status, null: false, comment: 'openning, closed'
      t.datetime :expire_at, null: false

      t.timestamps
    end
  end
end
