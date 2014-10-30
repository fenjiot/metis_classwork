require "csv"

class HotelDatabase
  def initialize(file_name)
    @database = {}
    read_in_file(file_name)
  end

  def prompt_user
    print "Which property? > "
    gets.chromp
  end

  private

  def read_in_file(file)
    CSV.foreach(file, headers: true) do |row|
      name = row["Hotel"]
      @database[name] = row
    end
    puts @database
  end
end

database = HotelDatabase.new("hotels.csv")
database.prompt_user
