class RemoveImagesFieldFromAuthor < ActiveRecord::Migration[7.0]
  def change
    remove_column :authors, :image, :string
  end
end
