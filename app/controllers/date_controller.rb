class DateController < ApplicationController
  def index
    @articles = Article.all

    if params[:current]
      @currentDate = params[:current]
      @articles = Article.where("DATE(created_at) = ?", @currentDate)
    end
  end

  def current_date

    if params[:current]
      @currentDate = params[:current]
    end

    @articles = Article.where("DATE(created_at) = ?", @currentDate)
  end


  def latest
    @articles = Article.all
  end

  def oldest
    @articles = Article.all
  end
end
