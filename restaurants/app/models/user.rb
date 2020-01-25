class User < ActiveRecord::Base 
  validates :username, :password, presence: true
  validates_uniqueness_of :username
  has_many :restaurants
end