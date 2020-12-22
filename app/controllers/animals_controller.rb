class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to root_path
  end

  private
  def animal_params
    params.require(:animal).permit(:nickname, :sex, :old_year_id, :old_month_id, :vaccine, :sterilization, :character, :reason, :prefecture_id, :transfer_cost, :transfer_terms, :image).merge(user_id: current_user.id)
  end
end
