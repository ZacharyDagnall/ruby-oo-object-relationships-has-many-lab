require 'pry'

class Artist
    attr_accessor :name
    @@all = []

    def initialize(name=nil)
        @name = name
        self.save
    end

    def add_song(song)
        song.artist = self
    end
    
    def add_song_by_name(name)
        song = Song.new(name,self)
    end

    def songs
        Song.all.select{|song| song.artist_name==self.name}
    end

    def self.song_count
        Song.all.length
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end
