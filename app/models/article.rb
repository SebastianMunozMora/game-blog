class Article < ApplicationRecord
    belongs_to :author
    has_one_attached :image

    scope :by_author_id, -> (author) { where(author: author) }
end
