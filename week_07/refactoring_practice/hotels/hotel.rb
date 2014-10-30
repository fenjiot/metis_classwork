require "./parser"

class Hotel
  attr_reader :name, :location, :phone

  def initialize(info)
    parser = Parser.new(info)
    parse_info(parser)
  end

  def total_rooms
    @singles + @doubles
  end

  private

  def parse_info(parser)
    @name = parser.as_pretty_string("Hotel")
    @location = parser.as_pretty_string("City")
    @phone = parser.as_pretty_phone_number("Phone Number")
    @singles = parser.as_integer("Number of Singles")
    @doubles = parser.as_integer("Number of Doubles")
  end
end
