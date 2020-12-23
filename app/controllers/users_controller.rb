class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :user_find, only: [:show, :edit, :update]
  before_action :move_to_index, only: [:edit]

  def show
    @animals = @user.animals
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private
  def user_find
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:comments, :email, :image)
  end

  def move_to_index
    redirect_to root_path if current_user.id != @user.id
  end
end
