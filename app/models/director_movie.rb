class DirectorMovie < ActiveRecord::Base
  has_many :actors, source: :person
  has_many :directors, source: :person
  has_many :movies
end
