class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new

    if current_user
      flash[:notice] = "You are already logged in."
      redirect_to root_path
    end
  end

  def create
    @user_session = UserSession.new(user_session_params)
    if @user_session.save
      flash[:success] = "Successfully logged in."
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    current_user_session.destroy
    flash[:success] = "Successfully logged out."
    redirect_to root_path
  end

  private

  def user_session_params
    params.require(:user_session).permit(:email, :password, :remember_me)
  end
end
