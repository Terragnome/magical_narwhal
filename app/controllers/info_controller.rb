class InfoController < ApplicationController
  def about
    @users=User.all

    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def contact
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def privacy
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def terms
    respond_to do |format|
      format.html
      format.js
    end
  end
end