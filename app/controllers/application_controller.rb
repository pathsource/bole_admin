class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def authenticate_admin_user!
    authenticate_user!
    render :file => 'public/403.html' unless current_user.is_a? Admin
  end


end
