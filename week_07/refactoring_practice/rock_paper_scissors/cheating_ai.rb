require "./judge"

class CheatingAI
  def initialize(player_move)
    @player_move = player_move
  end

  def play
    Judge::WINNING_MOVE_AGAINST[@player_move]
  end
end
