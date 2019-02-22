class UsersController < ApplicationController
  def update
    @user = current_user
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to dashboard_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :encrypted_password, :first_name, :last_name, :photo, :skills, :bio, :gender, :age)
  end
end
