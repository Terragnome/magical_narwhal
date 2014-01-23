class InfoController < ApplicationController
  def about
    @users=User.all

    respond_to do |format|
      format.html{render action: 'about'}
    end
  end
  
  def contact
    respond_to do |format|
      format.html{render action: 'contact'}
    end
  end
  
  def privacy
    respond_to do |format|
      format.html{render action: 'privacy'}
    end
  end
  
  def terms
    respond_to do |format|
      format.html{render action: 'terms'}
    end
  end
end