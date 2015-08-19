class GenreController < ApplicationController
  def index
    @genres = Genre.all
  end
  def new
    @genre = Genre.new
  end
  def create
    @genre = Genre.new(genre_params)
  end
  def destroy
    @genre = Genre.destroy
  end

end
