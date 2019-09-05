class Game

attr_reader :player1, :player2, :current_player, :non_player

def initialize(player1, player2)
  @player1 = Player.new(player1)
  @player2 = Player.new(player2)
  @current_player = @player1
  @non_player = @player2
end

def attack(player)
  player.hp -= 10
end

def switch_turn
  if @current_player == @player1
     @current_player = @player2
     @non_player = @player1
  else 
    @current_player = @player1
    @non_player = @player2
  end
end

end
