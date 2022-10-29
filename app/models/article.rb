require_relative "./author.rb"
require_relative "./magazine.rb"
class Article
    attr_reader :title, :author, :magazine
    @@all = []
    # initialize with title , author and magazine
    def initialize(title, author, magazine_name , magazine_category)
        @title = title
        @author = Author.new(author)
        @magazine = Magazine.new(magazine_name, magazine_category)
        @@all << self
    end
    # class method that returns all articles
    def self.all
        @@all
    end


end
