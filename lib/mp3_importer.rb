class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def files
    @files = Dir["#{@path}/**/*.mp3"]
    @files.each do |file|
      file = file.split('/').last
    end
  end
  
  def import
    
  end
end
