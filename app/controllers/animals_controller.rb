class AnimalsController < ApplicationController
  before_action :animal_find, only: [:show, :edit, :destroy]
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
  end

  def edit
  end

  # else時エラーメッセージ出力必要あり
  def update
    animal = Animal.find(params[:id])
    if animal.update(animal_params)
      redirect_to animal_path
    else
      render :edit
    end
  end

  def destroy
    @animal.destroy
    redirect_to root_path
  end

  private
  def animal_find
    @animal = Animal.find(params[:id])
  end

  def animal_params
    params.require(:animal).permit(:nickname, :sex, :old_year_id, :old_month_id, :vaccine, :sterilization, :character, :reason, :prefecture_id, :transfer_cost, :transfer_terms, :image).merge(user_id: current_user.id)
  end
end
