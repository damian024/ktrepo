json.extract! movie, :id, :title, :director, :year, :description, :photo, :created_at, :updated_at
json.url movie_url(movie, format: :json)
