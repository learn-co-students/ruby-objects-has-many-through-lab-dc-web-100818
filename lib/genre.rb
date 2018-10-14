class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|songs| songs.genre}
  end

  def artists
    Song.all.map {|songs| songs.artist}
  end

end
