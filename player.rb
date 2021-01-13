class Player 

  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    if lives > 0
      self.lives -= 1
    end
  end

  def no_lives?
    lives == 0
  end
end

# TEST CODE

# player1 = Player.new
# puts "player1 currently has #{player1.lives} live(s)"

# (0..3).each do |i|
#   player1.lose_life
#   puts "player1 currently has #{player1.lives} live(s)"
# end

