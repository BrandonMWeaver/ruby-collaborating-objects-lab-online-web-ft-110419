class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def files
    @files = Dir["#{@path}/**/*.mp3"]
    i = 0
    while i < @files.size do
      @files[i] = @files[i].split('/').last
      i += 1
    end
    
    #@files.each do |file|
    #  temp = file.split('/')
    #  file = temp.last
    #  puts file
    #end
    #pp @files
    
    return @files
  end
  
  def import
    
  end
end
