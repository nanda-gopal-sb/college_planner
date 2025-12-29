class SessionsController < ApplicationController
  skip_before_action :require_user, only: [ :new, :create ]
  def new
    # just to render the login form
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      puts "user authenticated"
      session[:user_id] = user.id # This "logs in" the user by saving their ID in a cookie
      redirect_to home_path, notice: "Logged in successfully!"
    else
      flash.now[:alert] = "Invalid email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil # This "logs out" the user by clearing the cookie
    redirect_to root_path, notice: "Logged out successfully!"
    # puts "User logged out"
  end
end
