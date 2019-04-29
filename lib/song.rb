class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@song = []
  @@artists = []
  @@genres = []
  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@song << @name
    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end
  def self.artists
    @@artists
  end
  
  def self.genres
    @@genres
  end
   
  def self.genre_count
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
