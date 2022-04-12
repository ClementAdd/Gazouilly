class CreateHashtags < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags do |t|
      t.string :name
      t.integer :references_count

      t.timestamps
    end
  end
end
