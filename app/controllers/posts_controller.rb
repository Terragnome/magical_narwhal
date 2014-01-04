class PostsController < ApplicationController
  def latest
    @post=Post.last

    render :show
  end

  def index_by_tag
    @posts=Post.tagged_with(params[:tag])
    render :index
  end

  def index_by_user
    user=User.find_by_nickname(params[:nickname])
    @posts=Post.find(:all, :conditions=>['user_id=? AND active=true', user.id], :order=>'id DESC')
    render :index
  end

  def index
    @posts=Post.where(:active=>true).reverse
  end

  def show
    begin
      @post=Post.find(params[:id])
    rescue
      redirect_to latest_path and return
    end

    #respond_to do |format|
    #  format.html{ render action: :show }
    #  format.js{}
    #end
  end
end