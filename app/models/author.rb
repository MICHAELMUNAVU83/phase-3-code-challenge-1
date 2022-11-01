require_relative './article'

class Author
  # Instance variables
  attr_reader :name
  # Class Variables
  @@all = []
  # Instance methods
  def initialize(name)
    @name = name
    @@all << self
  end

  def articles
    Article.all.filter {|article| article.author == self}
  end

  def magazines
    self.articles.map {|article| article.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
      self.magazines.map {|magazine|magazine.category}.uniq
  end
  # Class methods
  def self.all
    @@all
  end
 
  
end




