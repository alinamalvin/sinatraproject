class UsersController < ApplicationController
  
  # users can sign up 
  get '/signup' do
    erb:'users/signup.erb'
  end 
  
  post '/users' do
  end 
  
  # users can delete account 
  
end 