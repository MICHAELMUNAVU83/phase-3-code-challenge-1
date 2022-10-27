
require_relative "./magazine.rb"
require_relative "./author.rb"
class Article 
    @@all = []
    attr_accessor :title, :author, :magazine
   
    def initialize(author, magazine, title)
        @magazine = Magazine.new(magazine , "sports")
        @author = Author.new(author)
        @title = title
        @@all << self
    end
    def title
        @title
    end 
    def self.all
        @@all
    end
    def author
        @author
    end
    def magazine
        @magazine
    end
        

end


