class PostsController < ApplicationController  
  def latest
    @post=Post.active.last
    
    respond_to do |format|
      format.html{render action: 'show'}
      format.js{render action: 'show'}
    end
  end

  def index_by_tag
    tag=params[:tag]
    @posts=Post.active.tagged_with(tag)
    @tags=@posts.tag_counts_on(:tags)

    respond_to do |format|
      format.html{render action: 'index'}
      format.js{render action: 'index'}
    end
  end

  def index_by_user
    user=User.find_by_nickname(params[:nickname])
    @posts=user.posts.active
    @tags=@posts.tag_counts_on(:tags)

    respond_to do |format|
      format.html{render action: 'index'}
      format.js{render action: 'index'}
    end
  end

  def index
    @posts=Post.active
    @tags=@posts.tag_counts_on(:tags)
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    begin
      @post=Post.active.find(params[:id])
    rescue
      redirect_to latest_path and return
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end