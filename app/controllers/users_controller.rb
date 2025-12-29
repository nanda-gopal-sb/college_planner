class UsersController < ApplicationController
  def new
    @user = User.new # Just an empty object to build the form
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path, notice: "Signup successful! Please log in."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :college)
  end
end
