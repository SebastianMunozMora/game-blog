json.extract! author, :id, :name, :contact, :image, :description, :created_at, :updated_at
json.url author_url(author, format: :json)
