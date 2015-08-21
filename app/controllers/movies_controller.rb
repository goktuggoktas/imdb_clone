class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  before_action :set_people, only: [:new, :edit, :create, :update]
  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save then
      params[:director_ids].each do |director_id|
        DirectorMovie.create(movie_id: @movie.id, person_id: director_id.to_i)
      end
      params[:actor_ids].each do |actor_id|
        ActorMovie.create(movie_id: @movie.id, person_id: actor_id.to_i)
      end
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movie_path
    else
      render 'edit'
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def set_people
      @people = Person.all
    end

    def movie_params
      params.require(:movie).permit(:id, :title, :year, :description, :genre_id, :avatar, actor_ids: [], director_ids: [])
    end
end
