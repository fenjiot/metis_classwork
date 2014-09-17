class Round
	# Round.new calls this method
	MAXIMUM_GUESSES = 3
  MIN_RAND_NUMBER = 1
  MAX_RAND_NUMBER = 10

	def initialize
    @answer = rand(MIN_RAND_NUMBER..MAX_RAND_NUMBER)
		@number_of_guesses = 0
		@won = false		
	end

	attr_reader :number_of_guesses

	def play
		puts "--- Start of a new round! ---"
		puts "You have #{MAXIMUM_GUESSES} guesses to get the right number."
		MAXIMUM_GUESSES.times do
		#	puts "The answer is #{@answer}"
			print "Guess a number. Any number: "
			guess = gets.chomp.to_i
			@number_of_guesses += 1

			if correct?(guess)
				tell_user_they_are_correct
				@won = true
				break
			else
				tell_user_they_are_incorrect
			end

			puts "You only have " + guesses_left.to_s + ' guesses left.'

		end
	end

	def won?
		@won
	end

	def guesses_left
		guesses_left = MAXIMUM_GUESSES - @number_of_guesses
	end

	private # Makes everyhing below it private.

	def correct?(guess)
		guess == @answer
	end

	def tell_user_they_are_correct
		puts "You're correct!"
	end

	def tell_user_they_are_incorrect
		puts "You're wrong!"
	end
end
