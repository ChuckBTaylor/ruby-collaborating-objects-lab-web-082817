class Artist

  @@all = []
  attr_accessor :name

  def initialize(name = nil)
    @name = name
    @songs = []
    self.save
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(find_name)
    search = @@all.find do |artist|
      artist.name == find_name
    end
    if search
      find_name = search
    else
      self.new(find_name)
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end


end
