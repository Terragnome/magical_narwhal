class InfoController < ApplicationController
  def about
    @users=[User.first]
  end
  
  def contact
  end
  
  def privacy
  end
  
  def terms
  end
end