class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:name, :email, :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update){ |u| u.permit(:name, :email, :password, :password_confirmation) }
  end

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to new_user_session_path, :notice => 'Please sign in to continue'
    end
	end
end
