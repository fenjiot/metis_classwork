require "./judge"

class Game
  RPS = %w[ R P S ]
  WINNER_LOSER = {
    "PLAYER" => "AI",
    "AI" => "PLAYER",
  }

  def initialize
    puts "Hello"
  end

  def play
    print "Your move? (R/P/S, q to quit) > "
    @player_move = gets.chomp.upcase
    puts "AI played " + ai_select_answer
    @winner = Judge.new(@player_move, @ai_move).compare
    result
  end

  private

  def ai_select_answer
    @ai_move = random_mode
  end

  def random_mode
    RPS.sample
  end

  def result
    if (@winner == "TIE")
      puts "TIE"
    else
      puts "#{@winner} beats #{WINNER_LOSER[@winner]}"
    end
  end
end

rps = Game.new
rps.play
