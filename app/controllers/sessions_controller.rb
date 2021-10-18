class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      # flash[:notice] = "Login Successful" # shows on next page
      redirect_to :tasks, notice: "Login Successful." 
    else
      flash[:alert] = "Login Failed" 
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    # flash[:notice] = "Log out, Goodbye" # shows on next page
    redirect_to root_path, notice: "Logged out, Goodbye." 
  end
end
