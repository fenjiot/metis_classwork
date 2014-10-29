require "./gabe_judge"
require "./gabe_round"

class Game
  def initialize
    @rounds_won = 0
    @rounds_played = 0
  end

  def play
    round = next_round
    adjust_score_based_on(round)
    announce_score
    play_again?
  end

  private

  def next_round
    round = Round.new
    round.play
    increase_rounds_played
    round
  end

  def increase_rounds_played
    @rounds_played += 1
  end

  def adjust_score_based_on(round)
    if round.won?
      @rounds_won += 1
    end
  end

  def announce_score
    percentage = (@rounds_won / @rounds_played.to_f) * 100
    puts "You won #{percentage.round}% of hands so far"
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
