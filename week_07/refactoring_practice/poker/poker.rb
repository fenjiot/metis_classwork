require "./deck"
require "./hand"
require "./player"

class Poker
  def initialize
    @deck = Deck.new
    @deck.create
    @deck.shuffle
  end

  def number_of_players
    puts "How many players?"
    number_of_players = gets.chomp
    @number_of_players = number_of_players.to_i
    puts "There are #{@number_of_players} players playing"
  end

  def players
    player = []
    # hand = Hand.new(@deck)
    4.times do
      player = @deck.hand
    #   player = hand.deal
    #   puts player
    #   puts
    end

  end

end

poker = Poker.new
poker.number_of_players
poker.players
# poker.play
