class Question 

  attr_accessor :number1, :number2, :answer

  def initialize
    @number1 = 0
    @number2 = 0
    @answer = 0
  end

  def prompt
    generate_numbers
    puts "What does #{number1} plus #{number2} equal?"
  end

  def check_answer(player_answer)
    self.answer == player_answer
  end

  def generate_numbers
    self.number1 = random_number
    self.number2 = random_number
    add_numbers  
  end

  def random_number
    rand(20) + 1
  end

  def add_numbers
    self.answer = number1 + number2
  end

end

#TEST CODE

# question = Question.new
# p question

# (0..3).each do 
#   question.generate_numbers
#   p question
# end

# (0..3).each do
#   question.prompt
#   p question
#   player_answer = gets.chomp.to_i
#   if question.check_answer(player_answer)
#     puts "You Got it!!"
#   else
#     puts "WRONG!!"
#   end
# end