require 'pry'
class Genre
  attr_accessor :name, :all, :songs, :artists

  def initialize(name)
    @name = name
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.collect do |song|
      # binding.pry
      song.artist
    end
  end

end
