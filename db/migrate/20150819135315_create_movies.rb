class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :poster
      t.decimal :rating
      t.integer :year
      t.integer :genre_id

      t.timestamps null: false

      t.index :genre_id
    end
  end
end
