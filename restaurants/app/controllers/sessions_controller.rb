class SessionsController < ApplicationController
  
  # users can log in
  get '/login' do
   erb :'users/login'
  end 
  
  # users can log out 
  post '/login' do
    if params["username"].empty?  || params["password"].empty?
      error= "Username and password can`t be blank"
      erb:'users/login'
    else if user= User.find_by(username: params["username"], password: params["password"])
        session[:user_id]= user.id
        redirect '/restaurants'
      else 
        @error = "Account not found"
        erb :'users/login'
      end 
    end 
  end
 
  
  get '/logout' do
    session.clear 
    redirect '/'
  end 
  
end 

  