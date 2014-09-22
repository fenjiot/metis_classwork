require "./music_db"

class Jukebox
  def initialize(music_database)
    @music_database = music_database
    @query = []
    @artists = []
  end

  def query_artist
    available_artists = get_artists 

    puts "Artist to chose from:"
    puts available_artists

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
    print_line_of_stars
    puts "*   Song List      *"
    print_line_of_stars
    puts
    puts songs_query

  end


  private

  def get_artists

    # Building array of artists
    @music_database.each do |row|
      @artists << row["Artist"]
    end

    # Replacing repeat artist names with nil
    (0..@artists.length-1).each do |key|
      if @artists[key] == @artists[key + 1]
        @artists[key] = nil
      end
    end

    # Compacting artists array to get rid of all the nils
    @artists.compact
  end

  def print_line_of_stars
    20.times do
      print "*"
    end
    puts
  end


end

music_db = MusicDB.new
database = music_db.get_db("music.csv")
jukebox = Jukebox.new(database)
jukebox.query_artist
