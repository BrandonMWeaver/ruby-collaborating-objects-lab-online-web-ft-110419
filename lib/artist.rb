class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def find_or_create_by_name(name)
    self.all.each do |artist|
      if artist.name == name
        return artist
      end
    end
    @name = name
    return artist
  end
  
  def songs
    return Song.all.select { |song| song.artist == self }
  end
  
  def print_songs
    @songs.each do |song|
      puts song
    end
  end
  
  def self.all
    return @@all
  end
end
