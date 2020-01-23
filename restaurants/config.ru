require_relative './config/environment'


use Rack::MethodOverride 
use SessionsController
use UsersController
use RestaurantsController 
run ApplicationController


