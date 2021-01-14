class Song
    attr_accessor :name, :artist
    @@all =[]

    def initialize(name="",artist=nil)
        @name = name
        @artist = artist
        self.save
    end

    def self.all
        @@all
    end

    def artist_name
        return artist.name unless !artist
        nil
    end

    def save
        @@all << self
    end

end