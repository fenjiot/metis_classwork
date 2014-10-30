class Listing
  def initialize(hotel)
    @hotel = hotel
  end

  def describe
    puts @hotel.phone
    puts @hotel.location
    puts @hotel.total_rooms
  end
end
