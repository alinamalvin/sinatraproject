class RestaurantsController < ApplicationController 
  
  # CREATE
    # New 
    # make a get request to "/restaurants/new"
    get '/restaurants/new' do
      erb :'/restaurants/new'
    end 
    
    # Create
     # make a post request to "/restaurants"
     
    post '/restaurants' do
      restaurant = Restaurant.new(params)
      if !restaurant.name.empty? && !restaurant.location.empty? && !restaurant.cuisine.empty? 
        restaurant.save 
        redirect '/restaurants'
      else
        @error = "Data invalid. Please try again"
        erb :'/restaurants/new'
      end 
    end 
    
     
  # READ
    # Index
    # make a get request to "/restaurants"
    
    get '/restaurants' do 
      @restaurants = Restaurant.all 
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
