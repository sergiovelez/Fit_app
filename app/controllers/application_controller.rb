class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    # session[:user_id] = nil
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
