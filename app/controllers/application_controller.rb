class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        added_attrs = [:username, :first_name, :last_name, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
        devise_parameter_sanitizer.permit :sign_up, keys: [:username, :email, :password, :password_confirmation, :remember_me]
    end
end
