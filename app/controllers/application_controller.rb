class ApplicationController < ActionController::Base

  # upload error
  protect_from_forgery with: :exception
  #protect_from_forgery

  include SessionsHelper

  before_filter :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end

  def default_url_options(option = {})
    {locale: I18n.locale}
  end

end