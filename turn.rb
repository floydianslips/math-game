class Turn

  attr_accessor :q

  def initialize
   @q = Question.new
  end

  def turn_question
    q.random_question
  end

  def answer
    number = gets.chomp
    number.to_i == (q.x + q.y)
  end
end
