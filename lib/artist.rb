require 'pry'

class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(name)
    @name = name 
    self.class.all << self
  end 
  
  def new_song(name, genre) 
    song = Song.new(name, self, genre)
  end 
  
  def songs 
    Song.all.select {|song_hash| song_hash.artist.name == self.name}
  end 
  
  def genres
    self.songs
    # binding.pry
  end 
    
  
end 