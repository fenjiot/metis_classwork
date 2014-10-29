class Round
  CHOICES = Judge::WINNING_MOVE_AGAINST.keys

  def play
    set_player_move
    set_ai_move
    announce_ai_move
    print_result
  end

  def won?
    judge = Judge.new(@player_move, @ai_move)
    judge.won?
  end

  private

  def set_player_move
    @player_move = ask_player_for_move
  end

  def set_ai_move
    @ai_move = CHOICES.sample
  end

  def set_cheating_ai_move
    @ai_move = Judge::WINNING_MOVE_AGAINST[@player_move]
  end

  def set_losing_ai_move
    @ai_move = Judge::WINNING_MOVE_AGAINST.invert[@player_move]
  end

  def announce_ai_move
    puts "AI played #{@ai_move}"
  end

  def print_result
    judge = Judge.new(@player_move, @ai_move)
    judge.print_result
  end

  def ask_player_for_move
    print "Your move? (#{CHOICES.join("/")}) > "
    gets.chomp.upcase
  end
end
