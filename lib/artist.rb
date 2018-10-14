require 'pry'

class Artist
  attr_accessor :name, :artist, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end

  def new_song(title, genre)
    new_song = Song.new(title, self, genre)
    self.songs << new_song
    self.songs[0]
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.collect {|song| song.genre if song.artist == self}
  end

end
