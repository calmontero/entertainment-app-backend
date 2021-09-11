class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.belongs_to :profile, null: false, foreign_key: true
      t.belongs_to :program, null: false, foreign_key: true

      t.timestamps
    end
  end
end
