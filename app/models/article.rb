class Article < ApplicationRecord
    belongs_to :author
    has_one_attached :image
    belongs_to :category

    scope :by_author_id, -> (author) { where(author: author) }
    scope :by_category_id, -> (category) { where(category: category) }
end
