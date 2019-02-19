require_relative "player"
require_relative "turn"
require_relative "question"

class Game

  attr_accessor :player1, :player2, :turn

  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = player1
  end

  def start_game
    while player1.score != 0 && player2.score != 0
      take_a_turn
      @current_player = @current_player == player1 ? player2 : player1
    end
  end

  def take_a_turn
    turn = Turn.new
    puts "******************"
    puts "#{@current_player.name} you are up!"
    turn.turn_question
    puts "******************"
    if !turn.answer && @current_player == player1
      player1.score  -= 1
      puts "#{@current_player.name} just lost a point and now has #{@current_player.score} points."
    end 
    if !turn.answer && @current_player == player2
      player2.score -= 1
      puts "#{@current_player.name} just lost a point and now has #{@current_player.score} points."
    end
  end

end

fun = Game.new("bill", "bob")
fun.start_game
