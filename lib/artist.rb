require 'pry'
class Artist 
  attr_accessor :name
  attr_reader :songs #equivalent to def songs, @songs, end 
  
  @@song_count = 0 
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    @@song_count += 1 
    song.artist = self 
  end 
  
  def songs 
    @songs 
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self #self here refers to the instance of Artist 
  end 
  
  def self.song_count
    @@song_count 
  end 
end 