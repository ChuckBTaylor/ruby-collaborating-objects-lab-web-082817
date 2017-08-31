#require_relative './artist.rb'

class MP3Importer

  attr_reader :path
  attr_accessor :files

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{path}/**/*.mp3"].map do |file|
      file.slice(path.size + 1..file.size) #removes the path + "/" from the file name
    end
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
    # self.files.each do |file|
    #   info = file.split(" - ")
    #   x = Artist.new(info[0]).add_song(info[1])
    #   y = Song.new_by_filename(info[1], x)
    #   binding.pry
    # end
  end

end
