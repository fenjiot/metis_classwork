require "csv"

class Hotel
  def initialize
    @database = []
  end

  def get_db
    CSV.foreach("hotels.csv", headers: true) do |row|
     @database << row
    end
  end

  def print
    @database.each { |hotel| puts hotel["Hotel"] }
  end
end

hotel = Hotel.new
hotel.get_db
hotel.print
