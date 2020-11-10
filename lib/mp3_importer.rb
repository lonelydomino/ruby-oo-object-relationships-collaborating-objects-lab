class MP3Importer
    attr_accessor :path

def initialize(path)
    @path = path
end
def files
   mp3files = Dir.glob("#{path}/*.mp3")
   mp3files.collect do |item|
     item.slice!(path)
     item.slice!("/")
   end
   mp3files
end
def import
       files.each {|file| Song.new_by_filename(file)}
end
end