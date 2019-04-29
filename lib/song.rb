class Song
  attr_accessor :song, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@artists << @song
    @@genres << @genre
    @@count += 1
  end
  
