class Judge
    DEFEATED_BY = {
      "R" => "P",
      "P" => "S",
      "S" => "R",
    }

  def initialize(player, ai)
    @player_move = player
    @ai_move = ai
    @winner = "PLAYER"
  end

  def compare
    determine_winner
    @winner
  end

  private

  def determine_winner
    if tie?
      @winner = "TIE"
    elsif ai_won?
      @winner = "AI"
    end
  end

  def tie?
    @player_move == @ai_move
  end

  def ai_won?
    DEFEATED_BY[@player_move] == @ai_move
  end
end
