
require_relative "./article.rb"

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



  def add_article(title, magazine_name, magazine_category)
    Article.new(title, self, magazine_name, magazine_category)
  end
   
  # Returns a **unique** array of strings with the categories of the magazines the author has contributed to

  def topic_areas
    self.magazines.map do |magazine|
      magazine.category
    end.uniq
  end

  

end

