class User < ActiveRecord::Base 
  has_many :user_restaurant
  has_many :restaurant, through: :user_restaurant
end