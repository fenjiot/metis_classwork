require "./judge"

class Round
  CHOICES = Judge::WINNING_MOVE_AGAINST.keys

  def play
    player_select_answer
    ai_select_answer
    ask_judge_to_judge
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

  def ask_judge_to_judge
    judge = Judge.new(@player_move, @ai_move)
    judge.compare
    judge.won?
  end

  def random_mode
    CHOICES.sample
  end
end
