class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :user_name
      t.string :description
      t.string :avatar_url
      t.boolean :certified
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
