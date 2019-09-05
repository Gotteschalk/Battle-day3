require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Testing infrastructure working?'
  end

  get '/sign_in' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:name_player1], params[:name_player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    erb :play
  end

  get '/game' do
    @player_1_HP = $game.player1.hp
    @player_2_HP = $game.player2.hp
    @current_player_name = $game.current_player.name
    erb :game
  end

  get '/attack' do
    $game.attack($game.non_player)
    @current_player_name = $game.current_player.name
    @non_player_name = $game.non_player.name
    @non_player_hp = $game.non_player.hp
    $game.switch_turn
    erb :attack
  end

  run! if app_file == $0
end
