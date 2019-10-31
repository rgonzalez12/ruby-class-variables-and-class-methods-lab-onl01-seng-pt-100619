class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = [] 
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    
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
  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|song| genre_count[song] += 1}
    genre_count
  end
  
  def self.artist_count
    artist_count = Hash.new(0) #setting default key value of 0 
    @@artists.each {|artist| artist_count[artist] += 1} # adds song to value of key
    artist_count #return the hash of genres and songs in the genre
  end
end