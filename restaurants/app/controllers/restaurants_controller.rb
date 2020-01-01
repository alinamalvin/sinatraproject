class RestaurantsController < ApplicationController 
  
  # CREATE
    # New 
    # make a get request to "/restaurants/new"
    
    # Create
     # make a post request to "/restaurants"
     
  # READ
    # Index
    # make a get request to "/restaurants"
    
    get '/restaurants' do 
      erb :'restaurants/index'
    end 
  
    # Show
    # make a get request to "/restaurants/:id"
  
  # UPDATE
    # Edit 
    # Make a get request to "/restaurants/:id/edit"
    
    # Update 
    # Make a patch request to "/restaurants/:id"
  
  # DESTROY
  # make a delete request to "/restaurants/:id"
end 
