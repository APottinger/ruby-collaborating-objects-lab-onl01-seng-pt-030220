class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self
  end 
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.new_by_filename(filename)
    name = filename.split("- ")[1].chomp(".mp3")
    artist = filename.split("-")[0].chomp(".mp3")
  end 
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end