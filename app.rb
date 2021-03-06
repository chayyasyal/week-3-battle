require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    # session[:player_1_hit_points] = 100
    $player_2 = Player.new(params[:player_2_name])
    # session[:player_2_hit_points] = 100
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:play)
  end

  # get '/hit-points' do
  #   @player_1_hit_point = session[:player_1_hit_points]
  #   @player_2_hit_point = session[:player_2_hit_points]
  #   erb(:play)
  # end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb(:attack)
  end

  run! if app_file == $PROGRAM_NAME
end
