require "pry"
require_relative "./author.rb"
require_relative "./magazine.rb"
class Article
    attr_accessor :title, :author, :magazine
    def initialize(title, author, magazine , magazine_category)
        @title = title
        @author = Author.new(author)
        @magazine = Magazine.new(magazine, magazine_category)
    end


end
binding.pry
0