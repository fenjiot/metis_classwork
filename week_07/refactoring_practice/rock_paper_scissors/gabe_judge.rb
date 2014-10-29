class Judge
  WINNING_MOVE_AGAINST = {
    "R" => "P",
    "P" => "S",
    "S" => "R",
  }
  def initialize(player_move, ai_move)
    @player_move = player_move
    @ai_move = ai_move
  end

  def won?
    @player_move == WINNING_MOVE_AGAINST[@ai_move]
  end

  def print_result
    tie || ai_won || player_won
  end

  private

  attr_reader :player_move, :ai_move

  def tie
    if player_move == ai_move
      puts "TIE :/"
      true
    end
  end

  def ai_won
    if @ai_move == WINNING_MOVE_AGAINST[@player_move]
      puts "AI beats PLAYER"
      true
    end
  end

  def player_won
    puts "PLAYER beats AI"
  end
end
