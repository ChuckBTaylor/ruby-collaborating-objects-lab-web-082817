require_relative "song.rb"
require_relative "mp3_importer.rb"
require_relative "artist.rb"
require 'pry'


wee = MP3Importer.new("./spec/fixtures/mp3s")

wee.import

"bye"
