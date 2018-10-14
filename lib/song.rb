require 'pry'

class Song

  attr_accessor :title, :artist, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(title, artist, genre)
    @title = title
    @genre = genre
    @artist = artist
    self.class.all << self
  end

end
