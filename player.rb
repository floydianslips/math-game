class Player

  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def lose_point
    @score -= 1
    puts "#{name} is a bozo and now has #{score} points."
  end
end
