class Restaurant < ActiveRecord::Base 
  belongs_to :user
  validates_presence_of :name, :location, :cuisine 
end