class Artist 
  attr_accessor :name, :artist, :songs 
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end 
  
  def add_song(name)
    @songs << name
  end 
  
  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name}
  end 
  
  def self.create_by_name(name)
    artist = Artist.new(name) 
    @@all << self
  end 
  
  def self.find_or_create_by_name(name)
    if artist.name = nil?
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end 
  
  def self.print_songs
    self.all.each{ |song| puts song.name }
  end 
end 
mj = Artist.new("Michael Jackson")
Artist.all

mj.print_songs
    
  
  
  