class SubscribeController < ApplicationController
  def feed
    @posts = Post.active.all(:select => "id, title, body", :order => "id DESC")
    
    respond_to do |format|
      format.rss{ render :layout=>false }
    end
  end
end
