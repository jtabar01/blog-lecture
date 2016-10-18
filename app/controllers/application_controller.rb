include Pundit
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
    User.find(session[:current_user_id])
  end

  helper_method :current_user
end
