require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    song
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end


end
