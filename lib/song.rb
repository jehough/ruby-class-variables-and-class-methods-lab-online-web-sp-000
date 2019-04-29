class Song
  attr_accessor :song, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@artists << @song
    @@genres << @genre
    @@count += 1
  end

  def genre_count
    genre_count = {}
    @@genres.each do |genre|
      if !(genre_count.include?(genre))
        genre_count[genre] = 1
      else
        genre_count[genre] += 1
      end
    end
  end
end
    
