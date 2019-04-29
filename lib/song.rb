class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@artists << @name
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
