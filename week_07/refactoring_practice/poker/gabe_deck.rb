require "./gabe_cards"

class Deck
  SUITS = %w[ CLUBS DIAMONDS HEARTS SPADES ]
  NUMBERS = (2..14)

  def initialize
    @cards = []
  end

  private

  def create
    SUITS.each do |suit|
      NUMBERS.each do |rank|
        @cards << Cards.new(suit, number)
      end
    end
  end
end
