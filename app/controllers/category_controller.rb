class CategoryController < ApplicationController
  def index
    @articles = Article.all
    @networks = {
      "LinkedIn" => "https://www.linkedin.com/in/sebastian-munoz-mora-70799863/",
      "Facebook" => "https://www.facebook.com/SebastianMunozMora93/",
      "Instagram" => "https://www.instagram.com/semm93/",
    }
    @authors = Author.all
    @categories = Category.all
  end

  def video_games
    @category = Category.find_by(name: "video games")
    @articles = @category.articles
  end
  
  def movies
    @category = Category.find_by(name: "movies")
    @articles = @category.articles
  end
  
  def comics
    @category = Category.find_by(name: "comics")
    @articles = @category.articles
  end
  
  def books
    @category = Category.find_by(name: "books")
    @articles = @category.articles
  end
  
  def tech
    @category = Category.find_by(name: "tech")
    @articles = @category.articles
  end
  
  def entertainment
    @category = Category.find_by(name: "entertainment")
    @articles = @category.articles
  end
  
  def science
    @category = Category.find_by(name: "science")
    @articles = @category.articles
  end
  
  def lifestyle
    @category = Category.find_by(name: "lifestyle")
    @articles = @category.articles
  end
end
