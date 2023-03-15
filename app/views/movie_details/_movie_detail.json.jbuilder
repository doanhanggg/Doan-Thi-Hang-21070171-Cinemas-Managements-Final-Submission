json.extract! movie_detail, :id, :director, :actors, :genre, :duration, :language, :release_date, :introduction, :created_at, :updated_at
json.url movie_detail_url(movie_detail, format: :json)
