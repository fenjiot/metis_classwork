require "./deck_reader"
require "./flashcard_game"

deck_reader = DeckReader.new("decks.txt")
flashcard_game = FlashcardGame.new(deck_reader.get_decks)
flashcard_game.play
