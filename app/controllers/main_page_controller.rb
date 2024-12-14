class MainPageController < ApplicationController
  def index
    @articles = Article.all
    @networks = {
      "LinkedIn" => "https://www.linkedin.com/in/sebastian-munoz-mora-70799863/",
      "Facebook" => "https://www.facebook.com/SebastianMunozMora93/",
      "Instagram" => "https://www.instagram.com/semm93/",
    }
    @authors = Author.all
  end
end
