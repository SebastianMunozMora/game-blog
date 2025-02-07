class CreateCaptions < ActiveRecord::Migration[7.0]
  def change
    create_table :captions do |t|
      t.string :name

      t.timestamps
    end
  end
end
