require 'concerns/admodule'

class ApplicationController < ActionController::Base
  include AdModule
  before_action :adContent
  protect_from_forgery with: :null_session
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:danger] = "No estás autorizado para acceder a esa página."
    redirect_to main_app.root_url
  end
end
