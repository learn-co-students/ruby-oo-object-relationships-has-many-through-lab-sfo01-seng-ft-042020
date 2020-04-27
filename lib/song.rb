require 'pry'
class Song
    @@all = []
    attr_reader :artist, :genre, :name
    def initialize(name, artist=nil, genre)
        @artist = artist
        @genre = genre
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
end