class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artists.length
  end

  def self.genres
    @@genres
  end

  def self.genres_count
    @@genres.length
  end
end
