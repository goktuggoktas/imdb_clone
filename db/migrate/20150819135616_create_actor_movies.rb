class CreateActorMovies < ActiveRecord::Migration
  def change
    create_table :actor_movies do |t|
      t.integer :person_id
      t.integer :movie_id

      t.timestamps null: false

      t.index :person_id
      t.index :movie_id
    end
  end
end
