
class Song 
  attr_accessor :artist, :genre, :name

  # will contain each instance of Song
  @@all = []

  def self.all
    @@all 
  end

  # initializes with a name, an artist, and a genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

end