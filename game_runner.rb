require "./player"
require "./question"
require "./game"

game = Game.new
p1 = Player.new
p2 = Player.new
question = Question.new

while !game.winner
  game.prompt_turn
  question.prompt
  print "> "
  player_answer = gets.chomp.to_i
  game.prompt_turn
  if question.check_answer(player_answer)
    puts "YES! You are correct"
  else
    puts "Seriously? No!"
    if game.player_turn == 1
      p1.lose_life
      if p1.no_lives?
        game.winner = 2
      end
    else
      p2.lose_life
      if p2.no_lives?
        game.winner = 1
      end
    end
  end
  if game.winner 
    if game.winner == 1
      puts "Player 1 wins with a score of #{p1.lives}/3"
    else
      puts "Player 2 wins with a score of #{p2.lives}/3"
    end
      puts "----- GAME OVER -----"
  else 
    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
    puts "----- NEW TURN -----"
    game.switch_turns
  end
end

puts "Good bye!"