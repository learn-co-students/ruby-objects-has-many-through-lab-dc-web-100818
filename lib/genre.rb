class Genre
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
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs = Song.all.select {|song| song.genre == self}
    songs.collect(&:artist) # {|song| song.artist}
  end

end
