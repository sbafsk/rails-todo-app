class UsersController < ApplicationController
  before_action :set_user

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create    
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "User was successfully created."         
    else
      render :new, status: :unprocessable_entity         
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
