class Card

  def initialize(front_and_back)
    @front = front_and_back[:front]
    @back  = front_and_back[:back]
  end

  def play(deck_name)
    puts "#{@front} is #{deck_name} for: "
    answer = gets.chomp

    if correct?(answer)
      puts "Yup! That's right."
    else
      puts "Nope, the correct answer is #{@back}"
    end

  end

  private

  def correct?(answer)
    answer.downcase == @back.downcase
  end


end
