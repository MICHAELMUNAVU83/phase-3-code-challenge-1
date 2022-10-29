
require_relative "./article"
class Magazine 
  attr_accessor :name , :category
  @@all = []
  def initialize(name , category)
    @name = name
    @category = category
    @@all << self
  end
  def self.all
    @@all
  end
  def contributors
    Article.all.select do |article|
      article.magazine.name == self.name && article.magazine.category == self.category
    end.map do |article|
      article.author
    end
  end
  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    Article.all.select do |article|
      article.magazine.name == self.name && article.magazine.category == self.category
    end.map do |article|
      article.title
    end
  end


  def contributing_authors
    self.contributors.filter {|author|author.articles.count > 2}
  end 
   
     


  
  
end

