require "./pair"

class MyHash
  def initialize
    @pairs = [Pair.new("Gabe",26)]
  end

  def [](key)
    found_pair = find_pair_with_key(key)
    
    if found_pair
      found_pair.value
    end
  end

  def []=(key, new_value)
    found_pair = find_pair_with_key(key)

    found_pair.value = new_value
  end

  private
  def find_pair_with_key(key)
    @pairs.find do |pair|
      pair.key == key
    end
    # alt form for block
    # @pairs.find { |pair| pair.key == key }
  end
end

my_hash = MyHash.new
puts my_hash["Gabe"]
my_hash["Gabe"]= 27
puts my_hash["Gabe"]

