class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :text
      t.integer :retweet_count
      t.string :retweet_id
      t.integer :like_counter
      t.integer :reply_at
      t.string :out_url

      t.timestamps
    end
  end
end
