require "./deck"
require "./hand"
require "./player"

class Poker
  def initialize
    @deck = Deck.new
    @deck.create
    puts @deck.shuffle
  end

  def number_of_players
    puts "How many players?"
    number_of_players = gets.chomp
    @number_of_players = number_of_players.to_i
    puts "There are #{@number_of_players} players playing"
  end

  def players
    players = []
    @number_of_players.times do
      players << Player.new
    end
  end

  def play
    hand = Hand.new
    puts hand.deal
    # @number_of_players.times do
    #   puts "Hellows"
    # end
  end
end

poker = Poker.new
poker.number_of_players
poker.players
poker.play
