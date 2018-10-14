class Artist
  attr_accessor :name, :all

  def initialize(name)
    @name = name
    @songs = []
    self.class.all << self
  end

  @@all = []
  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.collect do |song|
      song.genre
    end
  end



end
