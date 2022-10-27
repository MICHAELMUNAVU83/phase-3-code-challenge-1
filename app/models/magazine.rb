class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end
  def name
    @name
  end
  def category
    @category
  end

  def self.all
    @@all
  end
  def contributors
    Author.all.select{|author| author.magazines == self}
  end
  def self.find_by_name(name)

    self.all.find{|magazine| magazine.name == name}
  end
  def article_titles
    Article.all.select{|article| article.magazine == self}.map{|article| article.title}
  end
  def contributing_authors
    Article.all.select{|article| article.magazine == self}.map{|article| article.author}.uniq
  end


end
