class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize
    @@count += 1
  end

  def self.count
    return
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genres_count
    @@genres.length
  end
end
