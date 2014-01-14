class SubscribeController < ApplicationController
  def feed
    @posts = Post.active.all(:select => "id, title, body", :order => "id DESC") 
    render :template => 'subscribe/feed.rss.builder', :layout => false
  end
end
