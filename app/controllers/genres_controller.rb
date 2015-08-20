class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy, :new, :create]

  def index
    @genres = Genre.all
  end

  def show
  end
  def edit
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to @genre
    else
      render 'new'
    end
  end

  def update
    @genre.update(genre_params)
    redirect_to genre_path
  end

  def destroy
    @genre.destroy
    redirect_to genre_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def set_genre
    @genre = Genre.find(params[:id])
  end


end
