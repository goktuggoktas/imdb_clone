class Person < ActiveRecord::Base

  has_many :movies, through: :actor_movies
  has_many :movies, through: :director_movies

end
