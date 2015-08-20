class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
  @people = Person.all
  end

  def show
  end
  def edit
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end

  def update
    @person.update(person_params)
    redirect_to person_path
  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :bio, :avatar)
  end

  def set_person
    @person = Person.find(params[:id])
  end

end
