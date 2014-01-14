class PostsController < ApplicationController  
  def latest
    @post=Post.active.last
    render :show
  end

  def index_by_tag
    tag=params[:tag]
    @posts=Post.active.tagged_with(tag)
    @tags=@posts.tag_counts_on(:tags)

    render :index
  end

  def index_by_user
    user=User.find_by_nickname(params[:nickname])
    @posts=user.posts.active
    @tags=@posts.tag_counts_on(:tags)

    render :index
  end

  def index
    @posts=Post.active
    @tags=@posts.tag_counts_on(:tags)
  end

  def show
    begin
      @post=Post.active.find(params[:id])
    rescue
      redirect_to latest_path and return
    end
  end
end