class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = filename.split(" - ")[0]
    @@all << song
    return song
  end
  
  def artist_name
    return @artist == nil ? nil : @artist.name
  end
  
  def self.all
    return @@all
  end
end
