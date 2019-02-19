require_relative "player"
require_relative "turn"
require_relative "question"

class Game

  attr_accessor :player1, :player2, :turn
  

  def get_players
    puts "Who's going first?"
    @player1 = Player.new(gets.chomp)
    puts  "Whom is second in this debacle?"
    @player2 = Player.new(gets.chomp)
    @current_player = player2
  end

  def start_game
    while player1.score != 0 && player2.score != 0
      @current_player = @current_player == player1 ? player2 : player1
      take_a_turn
    end
    puts "Game over and #{@current_player.name} has lost terribly!"
    puts player1.score == 0 ? "#{player2.name} is victorious with #{player2.score}/3 points" : "#{player1.name} is victorious with #{player1.score}/3 points"
  end

  def take_a_turn
    line = "******************"
    turn = Turn.new
    puts line
    puts "#{@current_player.name} you are up!"
    turn.turn_question
    puts line
    if !turn.answer
       @current_player.score -= 1
       puts "#{@current_player.name.upcase} is a dodo and lost a point. They now have #{@current_player.score} points!"
    else
      puts line
      puts "Fantastic job!"
    end
  end
end
