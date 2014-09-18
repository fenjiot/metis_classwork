class Lottery
  def initialize (names)
    @names = names
  end
end

names = []
# temporary list of names
names = ["Richard Feynman", 
         "Issac Newton", 
         "Albert Einstein", 
         "Paul Dirac"]

lottery = Lottery.new(names)
lottery.play
