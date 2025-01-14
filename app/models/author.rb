class Author < ApplicationRecord
    has_one_attached :avatar

    scope :search, -> (term) {
        where("name LIKE ?", 
            "%#{term}%") 
        }
end
