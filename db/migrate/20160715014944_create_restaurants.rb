class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :category_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
