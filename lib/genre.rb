require 'pry'
#attr_accessor
class Genre
    @@all = []
    attr_reader :name
    attr_accessor :artist
    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def artists
        self.songs.map do |song|
            self.artist = song.artist
        end
    end

    def songs
        Song.all.select do |tracks|
            self == tracks.genre
        end
    end

    def self.all
        @@all
    end
end