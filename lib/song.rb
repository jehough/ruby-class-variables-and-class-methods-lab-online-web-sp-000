class Song
  attr_accessor :song, :artist, :genre
  @@song_count = 0
  @@song_artist = []
  @@song_genre = []
  @@genre_count = {}
  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@song_artist << @song
    @@song_genre << @genre
    