class InfoController < ApplicationController
  def about
    @users=User.all

    respond_to do |format|
      format.html{render action: 'about'}
      format.js
    end
  end
  
  def contact
    respond_to do |format|
      format.html{render action: 'contact'}
      format.js
    end
  end
  
  def privacy
    respond_to do |format|
      format.html{render action: 'privacy'}
      format.js
    end
  end
  
  def terms
    respond_to do |format|
      format.html{render action: 'terms'}
      format.js
    end
  end
end