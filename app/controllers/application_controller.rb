class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_active_admin_user!
    authenticate_secretario!
    print 'entrou'
    unless current_secretario.superadmin?
      redirect_to root_path
    end
  end
end
