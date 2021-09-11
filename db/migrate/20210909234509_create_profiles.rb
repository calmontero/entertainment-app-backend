class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :avatar
      t.integer "user_id", null: false

      t.timestamps
    end
  end
end
