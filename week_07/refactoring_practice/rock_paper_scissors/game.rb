require "./round"

class Game
  def initialize
    @rounds_played = 0
    @rounds_won = 0
  end

  def play
    round = Round.new.play
    adjust_score_based_on(round)
    increment_rounds_played
    announce_score
    play_again?
  end

  private

  def adjust_score_based_on(round)
    if round
      @rounds_won += 1
    end
  end

  def announce_score
    percentage = (@rounds_won / @rounds_played.to_f) * 100
    puts "You won #{percentage.round}% of hands so far."
  end

  def increment_rounds_played
    @rounds_played += 1
  end

  def play_again?
    print "Play again? (y/n) > "
    answer = gets.chomp.downcase
    if answer == "y"
      play
    end
  end
end

game = Game.new
game.play
