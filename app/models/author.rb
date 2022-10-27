require_relative "./magazine.rb"
require_relative "./article.rb"
class Author
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def articles
    Article.all.select{|article| article.author == self}
  end
  def magazines
    Magazine.all.select{|magazine| magazine.author == self}
  end
  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end
  def topic_areas
    Magazine.all.select{|magazine| magazine.author == self}.map{|magazine| magazine.category}.uniq
  end
    



end
author = Author.new("joe")
article1 = Article.new("joe", "sports", "title")
article2 = Article.new("joe", "sports", "title")
article3 = Article.new("joe", "sports", "title")

puts author.articles

