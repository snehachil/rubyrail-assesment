class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Permit role parameter for sign-up and account update
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:role])
  end

  # Redirect users based on their role after login
  def after_sign_in_path_for(resource)
    if current_user.receptionist?
      patients_path
    elsif current_user.doctor?
      doctors_dashboard_path
    else
      root_path
    end
  end
end
