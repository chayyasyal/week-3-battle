require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:play)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_1_hit_points] = 100
    session[:player_2_name] = params[:player_2_name]
    session[:player_2_hit_points] = 100
    redirect to('/play')
  end

  get '/view-hit-points' do
    @player_1_hit_point = session[:player_1_hit_points]
    @player_2_hit_point = session[:player_2_hit_points]
    erb(:play)
  end

  run! if app_file == $PROGRAM_NAME
end
