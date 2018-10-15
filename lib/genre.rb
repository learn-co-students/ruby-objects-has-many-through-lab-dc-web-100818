class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self #saves the name of the genre to the list of genres
  end

  def self.all
    @@all
  end

  def songs #iterates through all songs and finds the songs that belong to that genre
    Song.all.select {|song| song.genre == self}
  end

  def artists #iterates through the genre's collection of songs and collects the artists that own each song
    self.songs.map {|song| song.artist }
  end
end
