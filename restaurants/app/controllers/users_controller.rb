class UsersController < ApplicationController
  
  # users can sign up 
  get '/signup' do
    erb :'users/signup'
  end 
  
  post '/signup' do
    # user should not be able to create an account with blank credentials 
    # user should not be able to create an account with a username that already exists 
    @user=User.new(params) 
    if @user.save
      session[:user_id]= @user.id 
      redirect '/restaurants'
    else
      @error= "Invalid credentials"
      erb:'users/signup'
    end 
  
end
  
  
  # users can delete account 
  
end 