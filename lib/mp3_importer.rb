class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def files
    @files = Dir["#{@path}*.mp3"]
    puts @files
  end
  
  def import
    
  end
end
