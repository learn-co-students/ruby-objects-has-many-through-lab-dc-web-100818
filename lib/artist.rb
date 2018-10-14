require 'pry'

class Artist 
  attr_accessor :name, :genre

  # will contain each instance of Artist
  @@all = []

  def self.all 
    @@all
  end
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  # given a name and genre
  # creates a new song associated with that artist
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  # calls Song class variable to select songs that contain its artist
  def songs 
   Song.all.select {|song| song.artist == self}
  end

  # maps songs to output each song.genre that relates to its artist
  def genres
    songs.map {|song| song.genre}
  end

 


end