class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :type_of_food
      t.integer :capacity
      t.integer :rating

      t.timestamps # creates created_at && updated_at
    end
  end
end
