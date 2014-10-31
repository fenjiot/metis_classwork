require "./judge"

class LosingAI
  def initialize(player_move)
    @player_move = player_move
  end

  def play
    Judge::WINNING_MOVE_AGAINST.invert[@player_move]
  end
end
