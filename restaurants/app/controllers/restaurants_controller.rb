class RestaurantsController < ApplicationController 
  
  # CREATE
    # New 
    # make a get request to "/restaurants/new"
    get '/restaurants/new' do
      if logged_in?
         erb :'/restaurants/new'
      else 
        redirect '/login'
      end
    end 
    
    # Create
     # make a post request to "/restaurants"
     
    post '/restaurants' do
      @restaurant=current_user.restaurants.build(params)
      if !@restaurant.name.empty? && !@restaurant.location.empty? && !@restaurant.cuisine.empty? 
        @restaurant.save 
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
       if logged_in?
        @restaurants = Restaurant.all.reverse
        erb :'restaurants/index'
      else 
        redirect '/login'
      end
    end 
  
    # Show
    # make a get request to "/restaurants/:id"
  
  get '/restaurants/:id' do
      if logged_in?
        @restaurant = Restaurant.find_by(id: params["id"])
        if @restaurant
          erb :'restaurants/show'
        else 
          redirect '/restaurants'
        end 
     else 
        redirect '/login'
     end
  end 
  
  # UPDATE
    # Edit 
    # Make a get request to "/restaurants/:id/edit"
    get '/restaurants/:id/edit' do
      if logged_in?
      @restaurant = Restaurant.find(params[:id])
      erb :'/restaurants/edit'
      else 
        redirect '/login'
     end
    end 
    
    # Update 
    # Make a patch request to "/restaurants/:id"
    
   patch '/restaurants/:id' do
     @restaurant = Restaurant.find(params[:id])
    if !params["restaurant"]["name"].empty? && !params["restaurant"]["location"].empty? && !params["restaurant"]["cuisine"].empty? 
     @restaurant.update(params["restaurant"])
     redirect "/restaurants/#{params[:id]}"
    else
        @error = "Data invalid. Please try again"
        erb :'/restaurants/edit'
      end 
   end 
    

   
   # DESTROY 
  # make a delete request to "/restaurants/:id"
   delete '/restaurants/:id' do
     restaurant = Restaurant.find(params[:id])
     restaurant.destroy 
     redirect '/restaurants'
   end 
end 
