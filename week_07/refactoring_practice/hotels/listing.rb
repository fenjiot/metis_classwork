class Listing
  def initialize(hotel)
    @hotel = hotel
  end

  def describe
    puts "Phone: #{@hotel.phone}"
    puts "Location: #{@hotel.location}"
    puts "Number of rooms: #{@hotel.total_rooms}"
  end
end
