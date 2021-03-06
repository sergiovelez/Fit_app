class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
# If the user exists AND the password entered is correct.
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      # If user's login doesn't work, send them back to the login form.
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
