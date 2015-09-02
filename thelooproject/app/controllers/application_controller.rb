class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def title
    @title ||= "TheLooProject"
  end
  helper_method :title

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :firstname
      devise_parameter_sanitizer.for(:sign_up) << :lastname
    end
end