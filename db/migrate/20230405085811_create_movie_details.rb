class CreateMovieDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_details do |t|
      t.string :name_movie
      t.string :director
      t.string :actors
      t.string :genre
      t.string :duration
      t.string :language
      t.datetime :release_date
      t.string :introduction

      t.timestamps
    end
  end
end
