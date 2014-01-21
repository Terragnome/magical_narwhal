class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_constants
  
  has_mobile_fu

  def set_constants
    @app_title_components=['HUAI', 'TZER']
    @app_title=@app_title_components.join('')
    @app_description='._.'

    @primary_user=User.first
  end
end