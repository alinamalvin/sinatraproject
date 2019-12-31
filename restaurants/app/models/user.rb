class User < ActiveRecord::Base 
  has_many :user_restaurants
  has_many :restaurants, through: :user_restaurants
end