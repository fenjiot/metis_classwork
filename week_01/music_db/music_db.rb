require "csv"

class MusicDB

  def initialize
    @database = []
    @query = []
  end

  def get_db(file_name)
    CSV.foreach(file_name, {headers: true}) do |row|
      @database << row
    end
    puts @database.inspect
  end


  def query_artist

    print "Enter artist name: "
    artist = gets.chomp

    @database.each do |row|
      if artist == row["Artist"]
        @query << row["Name"]
      end
    end

    songs_query = @query.sort
    puts
    20.times do 
      print "*"
    end
    puts
    puts "#{artist}"
    puts songs_query

  end


end

#music_db = MusicDB.new
#music_db.get_db("music.csv")
