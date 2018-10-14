
class Genre
  attr_accessor :name

  # will contain each instance of Genre
  @@all = []

  def self.all 
    @@all
  end
  
  def initialize(name)
    @name = name
    self.class.all << self
  end

   # calls Song class variable to select songs that contain its genre
  def songs 
    Song.all.select {|song| song.genre == self}
  end

  # maps songs to output each song.artist that relates to its genre
  def artists 
    songs.map {|song| song.artist}
  end

end