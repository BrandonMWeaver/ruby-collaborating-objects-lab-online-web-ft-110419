class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def files
    @files = Dir["#{@path}/**/*.mp3"]
    temp = []
    @files.each do |file|
      temp << file.split("/")
    end
    return @files
  end
  
  def import
    
  end
end
