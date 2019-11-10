class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(filename)
    @name = filename.split(" - ")[1]
    @artist = filename.split(" - ")[0]
    @@all << self
    return self
  end
  
  def self.all
    return @@all
  end
end
