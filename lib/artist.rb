require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song (name, genre)
    name = Song.new(name, self, genre)
  end

  def songs  #iterates through all songs and find the songs that belong to that artist. use select
    Song.all.select {|song| song.artist == self}
  end

  def genres #iterates over the artists songs and collects the genre of each song
    self.songs.map {|song| song.genre}
  end
end
