class Judge
    WINNING_MOVE_AGAINST = {
      "R" => "P",
      "P" => "S",
      "S" => "R",
    }

  def initialize(player, ai)
    @player_move = player
    @ai_move = ai
  end

  def compare
    tie? || ai_won? || player_won
  end

  def won?
    @player_move == WINNING_MOVE_AGAINST[@ai_move]
  end

  private

  def tie?
    if @player_move == @ai_move
      puts "TIE : |"
      true
    end
  end

  def ai_won?
    if @ai_move == WINNING_MOVE_AGAINST[@player_move]
      puts "AI beats PLAYER"
      true
    end
  end

  def player_won
    puts "PLAYER beats AI"
  end
end
