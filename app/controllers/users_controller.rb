class UsersController < ApplicationController
  def new
    @user = User.new # Just an empty object to build the form
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :college)
  end
end
