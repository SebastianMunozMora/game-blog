class ApplicationController < ActionController::Base

  @mainCategories = Category.all
end
