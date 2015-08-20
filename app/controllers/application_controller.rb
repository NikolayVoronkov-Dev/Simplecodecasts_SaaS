class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
<<<<<<< HEAD
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :stripe_card_token, :email, :password, :password_confirmation) }
  end
=======
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :stripe_card_token, :email, :password, :password_confirmation) }
    end
>>>>>>> 00124bfa3ce7c674b370a0b747ccae91fe2beae0
end