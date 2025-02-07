class Category < ApplicationRecord
  has_many :articles

  scope :search, -> (term) {
        where("name LIKE ?", 
            "%#{term}%") 
        }
end
