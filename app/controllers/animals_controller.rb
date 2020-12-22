class AnimalsController < ApplicationController
  def index
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

  private
  def animal_params
    params.require(:animal).permit(:sex, :old_year_id, :old_month_id, :vaccine, :sterilization, :character, :reason, :prefecture_id, :transfer_cost, :transfer_terms, :image)
  end
end
