class Person < ActiveRecord::Base

  has_many :actor_movies
  has_many :director_movies
  has_many :acted_movies, through: :actor_movies, source: :person
  has_many :directed_movies, through: :director_movies, source: :person

end
