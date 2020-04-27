require 'pry'
class Artist
    @@all = []
    attr_accessor :genre
    attr_reader :name
    def initialize(name)
        @genre = genre
        @name = name
        @@all << self
    end

    def genres
        self.songs.map do |type|
            self.genre = type.genre
        end
    end

    def new_song(name, genre)
       Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |tracks|
           self == tracks.artist
        end
    end

    def self.all
        @@all
    end
end