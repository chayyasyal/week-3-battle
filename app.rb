require 'sinatra'
require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure works'
  end

  get '/filling-in-names' do
    erb(:index)
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
  end
end
