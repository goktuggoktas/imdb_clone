class Person < ActiveRecord::Base
  has_many :actor_movies
  has_many :director_movies
  has_many :acted_movies, through: :actor_movies, source: :movie
  has_many :directed_movies, through: :director_movies, source: :movie
end
