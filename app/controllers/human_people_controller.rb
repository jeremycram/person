class HumanPeopleController < ApplicationController
  def index
    @people = HumanPerson.all
  end

  def show

       @person = HumanPerson.find(params[:id]) 
  end

  def new
    @person = HumanPerson.new
  end


  def create
    @person = HumanPerson.new(person_params)
    if @person.save
      redirect_to human_person_path(@person)
    else
      render :new
    end
  end

  def edit
      @person = HumanPerson.find(params[:id])
    end

    def update
    @person = HumanPerson.find(params[:id])
    if @person.update(person_params)
      redirect_to human_person_path(@person)
    else
      render :edit
    end
  end

  def destroy
    @person = HumanPerson.find(params[:id])
    @person.destroy
    redirect_to human_person_path
  end


  private
  def person_params
    params.require(:human_person).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
  end
end
