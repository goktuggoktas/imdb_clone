class Movie < ActiveRecord::Base
  has_many :actor_movies
  has_many :director_movies
  has_many :actors, through: :actor_movies, source: :person
  has_many :directors, through: :director_movies, source: :person
  has_one :genre
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validate :validate_directors

  def validate_directors
    self.errors.add(:directors, "too much") if self.directors.count > 1
  end
end
