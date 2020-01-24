class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name 
      t.string :location 
      t.string :cuisine
      t.integer :user_id 
      t.timestamps
    end 
  end
end

