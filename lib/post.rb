class Post
    attr_accessor :title, :author
    @@all =[]

    def initialize(title="",author=nil)
        @title = title
        @author = author
        self.save
    end

    def self.all
        @@all
    end

    def author_name
        return author.name unless !author
        nil
    end

    def save
        @@all << self
    end 

end