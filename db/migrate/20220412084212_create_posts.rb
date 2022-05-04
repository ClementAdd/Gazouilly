class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :text
      t.integer :user_id, null: false
      t.integer :repost_count
      t.string :repost_id
      t.integer :like_counter
      t.integer :reply_at
      t.string :out_url

      t.timestamps
    end
  end
end
