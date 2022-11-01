# Please copy/paste all three classes into this file to submit your solution!
# ARTICLE CLASS
class Article
    attr_reader :title, :author, :magazine
    @@all = []
    # initialize with title , author and magazine
    def initialize(title, author, magazine)
        @title = title
        @author = author
        @magazine = magazine
        @@all << self
    end
    # class method that returns all articles
    def self.all
        @@all
    end


end

# MAGAZINE CLASS

class Magazine 
    attr_accessor :name , :category
    @@all = []
    def initialize(name , category)
      @name = name
      @category = category
      @@all << self
    end
    # class method to return all magazines
    def self.all
      @@all
    end
    # Returns an array of Author instances who have written for this magazine
    def contributors
      Article.all.select do |article|
        article.magazine == self
      end.map do |article|
        article.author
      end
    end
    # Given a string of magazine's name, this method returns the first magazine object that matches
  
    def self.find_by_name(name)
      self.all.find do |magazine|
        magazine.name == name
      end
    end
    #  Returns an array strings of the titles of all articles written for that magazine
  
    def article_titles
      Article.all.filter do |article|
        article.magazine == self
      end.map do |article|
        article.title
      end
    end
  
  
    #  Returns an array of authors who have written more than 2 articles for the magazine
    def contributing_authors
      self.contributors.filter {|author|author.articles.count > 2}
    end 
     
       
  
  
    
    
  end

# AUTHOR CLASS


class Author 
    attr_reader :name
  
    def initialize (name)
      @name = name
    end
    ##  Returns an array of Article instances the author has written
    def articles
      Article.all.select do |article|
        article.author.name == self.name
      end
    end
    ## Returns a **unique** array of Magazine instances for which the author has contributed to
  
    def magazines
      self.articles.map do |article|
        article.magazine
      end.uniq
    end
  
    # Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine. 
  
  
  
    def add_article(title, magazine)
      Article.new(title, self, magazine)
    end
     
    # Returns a **unique** array of strings with the categories of the magazines the author has contributed to
  
    def topic_areas
      self.magazines.map do |magazine|
        magazine.category
      end.uniq
    end
  
    
  
  end
  
