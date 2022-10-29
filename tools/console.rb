require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
maga1 = Magazine.new("magazine1", "category1")
maga2 = Magazine.new("magazine2", "category2")
art1 = Article.new("article1", "author1", "magazine1", "category1")
art2 = Article.new("article2", "author2", "magazine2", "category2")
author1 = Author.new("author1")
author2 = Author.new("author2")


binding.pry

0
