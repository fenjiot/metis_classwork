require "./judge"

class Round
  CHOICES = Judge::WINNING_MOVE_AGAINST.keys

  def play
    player_select_answer
    ai_select_answer
    Judge.new(@player_move, @ai_move).compare
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
    CHOICES.sample
  end
end
