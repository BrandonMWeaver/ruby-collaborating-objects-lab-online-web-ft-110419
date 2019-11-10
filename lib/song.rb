class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def new_by_filename(filename)
    @name = filename.split(" - ")[1]
    @artist = filename.split(" - ")[0]
    @@all << song
    return song
  end
  
  def self.all
    return @@all
  end
end
