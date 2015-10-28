class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user
      redirect_to users_path
    else
      render :new
    end
  end

  def destroy
    User.find(params[:id])
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
