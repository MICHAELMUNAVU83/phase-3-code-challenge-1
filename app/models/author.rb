
require_relative "./article.rb"

class Author 
  attr_reader :name

  def initialize (name)
    @name = name
  end
  def articles
    Article.all.select do |article|
      article.author.name == self.name
    end
  end
  def magazines
    self.articles.map do |article|
      article.magazine
    end.uniq
  end
  def add_article(title, magazine_name, magazine_category)
    Article.new(title, self, magazine_name, magazine_category)
  end
  def topic_areas
    self.magazines.map do |magazine|
      magazine.category
    end.uniq
  end

  

end

