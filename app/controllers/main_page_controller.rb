class MainPageController < ApplicationController
  def index
    @term = params[:q]
    @articles = Article.all
    @networks = {
      "LinkedIn" => "https://www.linkedin.com/in/sebastian-munoz-mora-70799863/",
      "Facebook" => "https://www.facebook.com/SebastianMunozMora93/",
      "Instagram" => "https://www.instagram.com/semm93/",
    }
    @authors = Author.all
    @categories = Category.all

    @articleSearch = @term ? @articles.search(@term) : nil

  end


  def formatDate(date)
    strftime(date, "%Y-%m-%d")
  end
end
