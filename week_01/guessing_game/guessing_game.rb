require "./round"

class GuessingGame
	NUMBER_OF_ROUNDS = 3

	def initialize
		@total_number_of_guesses = 0.0
		@wins = 0
	end

	def play
		puts "Hello, welcome to my game."

		NUMBER_OF_ROUNDS.times do
			round = Round.new
			round.play
 	 	 	puts "You made #{round.number_of_guesses} guesses that round."
 	 	 	puts
 	 	 	puts " #{round.number_of_guesses} GUESSES MADE"
 	 	 	puts
 	 	 	@total_number_of_guesses += round.number_of_guesses
 	 	 	if round.won?
        puts "YOU WON THAT ROUND"
        puts
 	 	 		@wins += 1
      else
        puts "YOU LOST THAT ROUND"
        puts
 	 	 	end
		end

		puts "Average guesses per round: #{average_guesses}."
		puts "Total wins: #{@wins}"
	end

  def average_guesses
    @total_number_of_guesses/NUMBER_OF_ROUNDS
  end
end

guessing_game = GuessingGame.new
guessing_game.play
