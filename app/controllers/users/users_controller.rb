class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.create(user_params)
    redirect_to user_path(@user)
  end


  def user_params
    params.require(:user).permit(:email, :password)
  end 
end
