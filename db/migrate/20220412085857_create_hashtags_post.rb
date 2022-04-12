class CreateHashtagsPost < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags_posts do |t|
      t.references :post, null: false, foreign_key: true
      t.references :hashtag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
