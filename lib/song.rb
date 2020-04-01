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
    song_name = filename.split("- ")[1].chomp(".mp3")
    artist_name = filename.split("-")[0].chomp(".mp3")
    song = Song.new(name)
    song.name = song_name 
    artist.name = artist_name
    song 
  end 
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    artist.name = artist
    artist.add_song(self)
  end
end