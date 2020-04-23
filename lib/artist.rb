require 'pry'

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name,genre) #self "jay-z", name = song name, genre = rap
       info = Song.new(name,self,genre) 
       info
        # binding.pry
    end

    def genres
        Genre.all
    end

end