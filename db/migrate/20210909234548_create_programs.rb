class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :title
      t.integer :year
      t.integer :length
      t.string :description
      t.string :director
      t.string :cast
      t.string :image_url
      t.string :imdb_url

      t.integer "category_id", null: false
      t.integer "genre_id", null: false
      t.integer "rating_id", null: false

      t.timestamps
    end
  end
end
