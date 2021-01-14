class Author
    attr_accessor :name
    @@all = []

    def initialize(name=nil)
        @name = name
        self.save
    end

    def add_post(post)
        post.author = self
    end
    
    def add_post_by_title(title)
        post = Post.new(title,self)
    end

    def posts
        Post.all.select{|post| post.author_name==self.name}
    end

    def self.post_count
        Post.all.length
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end