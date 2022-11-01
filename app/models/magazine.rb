require_relative './article'

class Magazine 
  # Instance variables
  attr_accessor :name, :category
  # Class variables
  @@all = []
  # Instance methods
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def articles
    Article.all.filter {|article| article.magazine == self}
  end

  def article_titles
    self.articles.map {|article| article.title}
  end

  def contributors
    self.articles.map {|article| article.author}.uniq
  end

 
  # Class methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end
end
