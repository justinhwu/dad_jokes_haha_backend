class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user
      render json: @user
    else
      render json: {error: "Username not found"}
    end
  end

  private
  def user_params
    params.require(:user).permit!
  end
end
