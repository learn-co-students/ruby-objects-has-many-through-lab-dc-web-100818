class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    if Genre.all.include?(genre)
      @genre = genre
    else
      @genre = Genre.new(genre)
    end
    @@all << self
  end

  def self.all
    @@all
  end
end
