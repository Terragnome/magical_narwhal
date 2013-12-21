class InfoController < ApplicationController
  before_filter :get_user
  
  def get_user
    @user=User.first
  end
  
  def about
  end

  def contact
  end
end