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

  def self.genres
    @@genres.uniq
  end

  def self.genres_count
    arr = @@genres
    hash = {}
    arr.each do |genre| 
      hash[genre] ||= 0 if !hash[genre]
      hash[genre] += 1
    end
  end

  def self.artist_count
    @@artists.length
  end
end
