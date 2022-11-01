require_relative "./author.rb"
require_relative "./magazine.rb"
class Article
    # Instance variables
    attr_reader :author, :magazine, :title
    # Class variables
    @@all = []
    # Instance methods
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
    # Class methods
    def self.all
        @@all
    end

end





