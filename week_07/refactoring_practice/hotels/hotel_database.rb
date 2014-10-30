require "csv"

class HotelDatabase
  def initialize(file_name)
    @database = {}
    read_in_file(file_name)
  end

  private

  def read_in_file(file)
    CSV.foreach(file, headers: true) do |row|
      puts row["Hotel"]
    end
  end
end

HotelDatabase.new("hotels.csv")
