class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_constants

  def set_constants
    @app_title_prefix='HUAI'
    @app_title_suffix='TZER'
    @app_title="#{@app_title_prefix}#{@app_title_suffix}"
  end
end