class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :full_name, :organization_name, :phone_number, :address, :city, :state, :zip, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :full_name, :organization_name, :phone_number, :address, :city, :state, :zip, :email, :password, :password_confirmation) }
  end


end
