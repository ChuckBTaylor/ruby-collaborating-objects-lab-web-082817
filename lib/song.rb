require 'pry'
class Song

  def initialize(name = nil, artist = nil)
    @name = name
    @artist = artist
  end

  attr_accessor :name, :artist

  def self.new_by_filename(name)
    info = name.split(" - ")
    new_artist = Artist.find_or_create_by_name(info[0])
    new_song = Song.new(info[1],new_artist)
    new_artist.add_song(new_song)
    new_song
  end

end
