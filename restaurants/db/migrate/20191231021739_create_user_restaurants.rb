class CreateUserRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :user_items do |t|
      t.integer :user_id
      t.integer :item_id
  end
end
end 
