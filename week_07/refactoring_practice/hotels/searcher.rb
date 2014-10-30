require "./hotel"
require "./null_hotel"
require "./listing"
require "./hotel_database"

class Searcher
  def initialize(file_name)
    @hotels = HotelDatabase.new(file_name).read_in_file
  end

  def prompt_user
    name = ask_user_which_property
    hotel = find_hotel(name)
    Listing.new(hotel).describe
  end

  private

  def ask_user_which_property
    print "Which property? > "
    gets.chomp
  end

  def find_hotel(name)
    @hotels.fetch(name, NullHotel.new)
  end
end

searcher = Searcher.new("hotels.csv")
searcher.prompt_user
