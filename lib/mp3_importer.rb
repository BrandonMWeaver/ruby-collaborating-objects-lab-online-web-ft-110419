class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    puts Dir["#{@path}*.mp3"]
  end
  
  def import
    
  end
end
