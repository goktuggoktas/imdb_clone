class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :photo
      t.text :bio

      t.timestamps null: false
    end
  end
end
