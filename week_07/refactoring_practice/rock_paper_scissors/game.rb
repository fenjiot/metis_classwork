require "./judge"

class Game
  RPS = %w[ R P S ]

  def play
    player_select_answer
    ai_select_answer
    Judge.new(@player_move, @ai_move).compare
    play_again
  end

  private

  def player_select_answer
    print "Your move? (R/P/S) > "
    @player_move = gets.chomp.upcase
  end

  def ai_select_answer
    @ai_move = random_mode
    puts "AI played " + @ai_move
  end

  def random_mode
    RPS.sample
  end

  def play_again
    print "Play again? (y/n) > "
    answer = gets.chomp.downcase
    if answer == "y"
      play
    end
  end
end

game = Game.new
game.play
