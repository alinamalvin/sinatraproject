class Restaurant < ActiveRecord::Base 
  has_many :user_restaurant
  has_many :user, through: :user_restaurant
end