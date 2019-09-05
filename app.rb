require 'sinatra'
require './lib/player'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    'Testing infrastructure working?'
  end

  get '/sign_in' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:name_player1])
    $player2 = Player.new(params[:name_player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end

  get '/game' do
    @player_1_HP = 100
    @player_2_HP = 100
    erb :game
  end

  get '/attack' do
    $player1.attack($player2)
    @player1_name = $player1.name
    @player2_name = $player2.name
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp
    erb :attack
  end

  run! if app_file == $0
end
