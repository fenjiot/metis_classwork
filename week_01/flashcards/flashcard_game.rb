class FlashcardGame

  def initialize(decks)
    @decks = decks
  end

  def play
    loop do
      list_out_decks
      deck = ask_user_which_deck_they_want_to_play
      if deck
        puts "You've selected #{deck.name}."
        deck.play
      else
        puts "exiting"
        break
      end
    end
  end

  private

  def list_out_decks
    @decks.each {|deck| puts deck.name}
  end

  def ask_user_which_deck_they_want_to_play
    print "Which deck would you like to play (leave blank to quit) >> "
    requested_deck_name = gets.chomp.capitalize
    @decks.find { |deck| deck.name == requested_deck_name }
  end

end
