class RemoveImageFromAuthor < ActiveRecord::Migration[7.0]
  def change
    remove_column :author, :Image, :string
  end
end
