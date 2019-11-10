class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def files
    @files = Dir["#{@path}/**/*.mp3"]
    @files.each do |file|
      temp = file.split('/')
      pp temp
      file = temp[temp.size - 1]
      puts file
    end
    return @files
  end
  
  def import
    
  end
end
