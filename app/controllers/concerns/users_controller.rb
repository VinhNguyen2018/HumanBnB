class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
