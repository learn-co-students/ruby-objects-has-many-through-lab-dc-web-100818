class Artist
  attr_accessor :name, :genre
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|songs| songs.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    self.songs.map {|songs| songs.genre}
  end
end
