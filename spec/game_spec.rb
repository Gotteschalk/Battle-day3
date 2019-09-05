require 'game'

describe Game do

  describe '#attack' do
    it 'reduces opponents hit points by 10 when attacked' do
      player1 = Player.new("dave")
      player2 = Player.new("Bill")
      game = Game.new(player1, player2)
      expect {game.attack(player1) }.to change { player1.hp }.by (-10)
    end
  end
end
