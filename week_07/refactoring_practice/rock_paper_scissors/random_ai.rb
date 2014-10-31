require "./judge"

class RandomAI
  CHOICES = Judge::WINNING_MOVE_AGAINST.keys

  def initialize(player_move)
    @player_move = player_move
  end

  def play
    CHOICES.sample
  end
end
