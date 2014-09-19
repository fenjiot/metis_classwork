require "./deck"
require "./card"

class DeckReader
  def initialize(file_name)
    @file = File.open(file_name, "r")
    @number_of_decks = get_line.to_i
  end

  def get_decks
    @number_of_decks.times.map do
      read_deck
    end
  end


  private

  def get_line
     @file.gets.chomp
  end

  def read_deck
    name = get_line
    number_of_cards = get_line.to_i
    cards = number_of_cards.times.map {read_card}

    Deck.new({ name: name, cards: cards })
  end

  def read_card
    back  = get_line
    front = get_line
    Card.new({ front: front, back: back })
  end


end
