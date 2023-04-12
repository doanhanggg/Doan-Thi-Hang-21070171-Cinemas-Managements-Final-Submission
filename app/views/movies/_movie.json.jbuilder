json.extract! movie, :id, :name_movie, :director, :actors, :genre, :duration, :language, :release_date, :introduction, :created_at, :updated_at
json.url movie_url(movie, format: :json)
