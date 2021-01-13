class Game
    
    attr_accessor :winner, :player_turn 

  def initialize
    @winner = nil
    @player_turn = 1
  end  

  def prompt_turn
    if player_turn == 1
      print "Player 1: "
    else 
      print "Player 2: "
    end
  end

  def switch_turns
    if player_turn == 1
      self.player_turn = 2
    else
      self.player_turn = 1
    end
  end

end

# TEST CODE

# game = Game.new
# p game
# puts "Do we have any winners? #{game.winner}"

# (0..3).each do |num|
#   puts "It's player #{game.player_turn}'s turn"
#   game.switch_turns
# end

