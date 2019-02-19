class UsersController < ApplicationController
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Bienvenue sur HumanBnB !'
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def dashboard
    @User = current_user
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to root_path
  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
