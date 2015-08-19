class Movie < ActiveRecord::Base
  has_many :actor_movies
  has_many :director_movies
  has_many :actors, through: :actor_movies, source: :person
  has_many :directors, through: :director_movies, source: :person
  has_one :genre
end
