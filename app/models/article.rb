require_relative "./author.rb"
require_relative "./magazine.rb"
class Article
    attr_accessor :title, :author, :magazine
    @@all = []
    def initialize(title, author, magazine , magazine_category)
        @title = title
        @author = Author.new(author)
        @magazine = Magazine.new(magazine, magazine_category)
        @@all << self
    end
    def self.all
        @@all
    end


end
