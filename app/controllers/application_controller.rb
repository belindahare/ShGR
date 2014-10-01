class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:role, :grocer_id, :full_name, :organization_name, :phone_number, :address, :city, :state, :zip, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:role, :grocer_id, :full_name, :organization_name, :phone_number, :address, :city, :state, :zip, :email, :password, :password_confirmation) }
  end
  def after_sign_in_path_for(resource)
    if current_user.role == "supporter"
      grocers_path
    elsif current_user.role == "volunteer_organization"
      grocer_supporter_volunteer_organization_path
    elsif current_user.role == "admin"
      grocers_path
    else
      "error"
    end
  end
end
