class Movie < ActiveRecord::Base

  has_many :people, through: :actor_movies
  has_many :people, through: :director_movies
  has_one :genre

end
