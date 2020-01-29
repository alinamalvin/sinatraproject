require_relative '../../config/environment' 

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions 
    set :session_secret, "whatever"
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end
    
  def logged_in?
    !!current_user
   end 
  
  def current_user
    User.find_by(id: session[:user_id])
  end
  
  def require_login
    unless logged_in?
       redirect '/login'
    end
  end
  
 def redirect_if_not_allowed(restaurant)
   unless current_user.id==restaurant.user_id
       redirect '/index'
   end
 end 
 
 end 
 
