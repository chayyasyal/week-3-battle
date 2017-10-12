require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure works'
  end

  get '/filling-in-names' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    erb(:play)
  end
end
