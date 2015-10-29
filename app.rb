require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @current_player_name = $game.current_player_name
    @player_1_name = $game.player1_name
    @player_2_name = $game.player2_name
    @player_1_hp = $game.player1_hit_points
    @player_2_hp = $game.player2_hit_points
    erb(:play)
  end

  get '/attack' do
    $game.attack
    @player_1_name = $game.player1_name
    @player_2_name = $game.player2_name
    @player_1_hp = $game.player1_hit_points
    @player_2_hp = $game.player2_hit_points
    @current_player = $game.current_player
    @player1 = $game.player1
    $game.switch_player
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
