
class Turn
  
  attr_accessor :q
  
  def initialize
   @q = Question.new
  end

  def turn_question
    # q = Question.new
    q.random_question
    # answer
  end

  def answer
    number = gets.chomp
    number.to_i == (q.x + q.y)
    #   puts "good job homey"
    # else
    #   puts "Really? Man you are dumb"
    #   current_player.lose_point
    #   puts "#{current_player} score is #{current_player.score}"
    # end
  end 
end

# turn = Turn.new
# turn.turn_question