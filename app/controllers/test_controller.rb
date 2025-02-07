class TestController < ApplicationController

  
  def articles
  end
  def index
    @article = Article.find_by(id: 1)
  end

  def thumb
    @article = Article.find_by(id: 1)
  end

  def full
    @article = Article.find_by(id: 1)
  end
end
