require "./judge"

class Round
  CHOICES = Judge::WINNING_MOVE_AGAINST.keys

  def play(mode)
    decorate
    player_select_answer
    ai_select_answer(mode)
    ask_judge_to_judge
  end

  private

  def decorate
    puts "\n" + "-" * 50
  end

  def player_select_answer
    print "Your move? (#{CHOICES.join("/")}) > "
    @player_move = gets.chomp.upcase
  end

  def ai_select_answer(ai)
    @ai_move = ai.new(@player_move).play
    puts "AI played " + @ai_move
  end

  def ask_judge_to_judge
    judge = Judge.new(@player_move, @ai_move)
    judge.compare
    judge.won?
  end
end
