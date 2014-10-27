class Deck
  def initialize
    @ranks = %w[ A 2 3 4 5 6 7 8 9 10 J Q K ]
    @suits = %w[ C D H S ]
    @deck = []
  end

  def create
    @suits.each do |suit|
      @ranks.each do |rank|
        @deck << rank + suit
      end
    end
  end

  def shuffle
    @deck.shuffle!
  end
end

deck = Deck.new
deck.create
puts deck.shuffle
