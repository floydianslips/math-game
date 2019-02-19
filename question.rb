
class Question

  attr_accessor :number, :x, :y

  def initialize
    @number = 0
    @x = rand(1..20)
    @y = rand(1..20)
  end

  def random_question
    puts "What is #{x} + #{y}?"
  end

end

# question = Question.new
# question.random_question()
# question.answer()