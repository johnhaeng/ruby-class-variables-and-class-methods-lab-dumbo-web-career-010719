class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def genre_count
    hash = {}
    if hash[@@genres]
      hash[@@genres] + 1
    else hash[@@genres] = []
      hash[@@genres]
    end
  end
  
  def artist_count
    hash = {}
    
end