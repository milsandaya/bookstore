class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?
  before_action :initialize_session
  helper_method :cart

  protected
  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password, :current_password)}
  end

  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Book.find(session[:shopping_cart])
  end
end
