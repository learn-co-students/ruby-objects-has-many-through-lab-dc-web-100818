require 'pry'

class Genre

  attr_accessor :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    Song.all.collect {|song| song.artist if song.genre == self }.compact
  end
end
