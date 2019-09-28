require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    
 
    
    erb :index
  end
  
  post '/checkout' do 
    
   configure do
    enable :sessions
    set :session_secret, "secret"
  end
   
    session[:item] = params[:item]
    @session = session
    
    
    erb :checkout
  end
end