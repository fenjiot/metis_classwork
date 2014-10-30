require "csv"

class HotelDatabase
  def initialize(file_name)
    @hotels = {}
    @file_name = file_name
  end

  def read_in_file
    CSV.foreach(@file_name, headers: true) do |row|
      hotel = Hotel.new(row)
      @hotels[hotel.name] = hotel
    end
    @hotels
  end
end
