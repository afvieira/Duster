class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_filter :set_locale
  
  def after_sign_in_path_for(resource)
      '/users/profile'
  end
  def default_url_options(options={})
    logger.debug
    {locale: I18n.locale}
  end

  private
  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url, :alert => exception.message
  end
end
