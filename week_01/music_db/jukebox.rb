require "./music_db"

class Jukebox
  def initialize(music_database)
    @music_database = music_database
  end

#  def play
#    puts @music["Artist"]
#    puts
#    puts
#    @music["Name"].times do
#      puts @music["Name"]
#    end
#  end


  def query_artist

    puts @music_database.inspect
    puts

    print "Enter artist name: "
    artist = gets.chomp

    @music_database.each do |row|
      if artist == row["Artist"]
        @query << row["Name"]
      end
    end

    songs_query = @query.sort
    puts
    puts "#{artist}"
    20.times do 
      print "*"
    end
    puts
    puts songs_query

  end

end

music_db = MusicDB.get_db("music.csv")
jukebox = Jukebox.new(music_db)
jukebox.query_artist
