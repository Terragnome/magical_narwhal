class PostsController < ApplicationController  
  def latest
    @post=Post.last

    render :show
  end

  def index_by_tag
    @posts=Post.active.tagged_with(params[:tag])
    render :index
  end

  def index_by_user
    user=User.find_by_nickname(params[:nickname])
    @posts=Post.active.find(:all, :conditions=>['user_id=?', user.id], :order=>'id DESC')
    render :index
  end

  def index
    @posts=Post.active.where(:active=>true).reverse
  end

  def show
    begin
      @post=Post.active.find(params[:id])
    rescue
      redirect_to latest_path and return
    end

    #respond_to do |format|
    #  format.html{ render action: :show }
    #  format.js{}
    #end
  end
end