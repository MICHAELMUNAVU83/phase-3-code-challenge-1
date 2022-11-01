require "pry"
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
magazine1 = Magazine.new("magazine1", "category1")
magazine2 = Magazine.new("magazine2", "category2")

author1 = Author.new("author1")
author2 = Author.new("author2")
aricle1 = Article.new("article1", author1, magazine1)
aricle2 = Article.new("article2", author1, magazine2)
aricle3 = Article.new("article3", author2, magazine1)



binding.pry

0
