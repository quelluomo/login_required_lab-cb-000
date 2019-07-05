class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def current_user
    session[:user]
  end



  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
