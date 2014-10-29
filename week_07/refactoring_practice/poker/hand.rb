class Hand
  SIZE_OF_HAND = 5

  def initialize(deck)
    @hand = []
    @deck = deck
    # puts deck.cards[0][:rank]
  end

  def deal
    # puts @deck.cards[0][:rank]
    @hand = @deck.cards.shift(5)
  end
end
