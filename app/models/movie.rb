class Movie < ActiveRecord::Base
  ratyrate_rateable "Rating"
  has_many :actor_movies
  has_many :director_movies
  has_many :actors, through: :actor_movies, source: :person
  has_many :directors, through: :director_movies, source: :person
  has_one :genre
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :title , presence: true
  validates :description ,presence: true , length:  {minimum: 30, maximum: 500}
  validates :year , numericality: {greater_than: 1910} ,presence: true
  validates :genre_id , presence: true
end
