class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :require_login, :authenticate_user

  def current_user
      current_user ||= Player.find_by(id: session[:player_id])
    end

    def logged_in?
      #when you chain two exclamation marks together, it converts the value to a boolean
      !!current_user
    end

    def require_login
      redirect_to '/' unless session.include? :player_id
    end

    def authenticate_user
      if !current_user.id === session[:player_id].to_i
        redirect_to login_path
      end
    end

end
