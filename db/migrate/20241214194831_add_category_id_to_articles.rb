class AddCategoryIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :category_id, foreign_key: true
  end
end
