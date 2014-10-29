require "./judge"

class Game
  RPS = %w[ R P S ]
  LOST_TO = {
    "PLAYER" => "AI",
    "AI" => "PLAYER",
  }

  def play
    player_select_answer
    ai_select_answer
    Judge.new(@player_move, @ai_move).compare
    # result(winner)
    play_again
  end

  private

  def player_select_answer
    print "Your move? (R/P/S, q to quit) > "
    @player_move = gets.chomp.upcase
  end

  def ai_select_answer
    @ai_move = random_mode
    puts "AI played " + @ai_move
  end

  def random_mode
    RPS.sample
  end

  def result(winner)
    if (winner == "TIE")
      puts "TIE"
    else
      puts "#{winner} beats #{LOST_TO[winner]}"
    end
  end

  def play_again
    print "Play again? (Yes/No) > "
    answer = gets.chomp.upcase
    if answer == "YES"
      play
    end
  end
end

game = Game.new
game.play
