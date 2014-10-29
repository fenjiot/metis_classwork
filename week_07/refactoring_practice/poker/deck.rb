require "./hand"

class Deck
  def initialize
    @ranks = %w[ A 2 3 4 5 6 7 8 9 10 J Q K ]
    @suits = %w[ C D H S ]
    @cards = []
  end

  attr_reader :cards

  def create
    @suits.each do |suit|
      @ranks.each do |rank|
        @cards << { rank: rank, suit: suit }
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def print
    # @cards.each { |deck| puts deck[:rank] + deck[:suit] }
    puts @cards[0][:rank]
  end

  def hand
    hand = Hand.new(@deck)
    player = hand.deal
    puts player
    puts
    hand
  end
end

deck = Deck.new
deck.create
deck.shuffle

hand = Hand.new(deck)
4.times do
  player = hand.deal
  puts player
  puts
end
