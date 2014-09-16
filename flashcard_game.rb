class FlashcardGame

  def play
    loop do
      deck = ask_user_which_deck_they_want_to_play
      if deck == ""
        puts "exiting"
        break
      else 
        puts "You've selected #{deck}"
      end
    end
  end

  private
  def ask_user_which_deck_they_want_to_play
    print "Which deck would you like to play (leave blank to quit)>> "
    gets.chomp
  end

end

flashcard_game = FlashcardGame.new
flashcard_game.play
