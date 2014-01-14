class InfoController < ApplicationController
  def about
    @users=User.all
  end
  
  def contact
  end
  
  def privacy
  end
  
  def terms
  end
end