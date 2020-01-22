class UsersController < ApplicationController
  
  # users can sign up 
  get '/signup' do
    erb :'users/signup'
  end 
  
  post '/signup' do
    # user should not be able to create an account with blank credentials 
    # user should not be able to create an account with a username that already exists 
    user=User.new(params) 
    if user.username.empty?  || user.password.empty?
      @error= "Username and password can`t be blank"
      erb:'users/signup'
    else if User.find_by(username: user.username)
      @error = "Account with that username already exists"
      erb:'users/signup'
    else 
      user.save 
      session[:user_id]= user.id 
      redirect '/restaurants'
    end 
  end 
end
  
  
  # users can delete account 
  
end 