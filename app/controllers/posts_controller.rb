class PostsController < ApplicationController
  def latest
    @post=Post.last
    render :show
  end

  def index_by_user
    logger.debug "TRACE #{params}"
    user=User.find_by_nickname(params[:nickname])
    @posts=Post.where(:user_id=>user.id, :active=>true).reverse
  end

  def index
    @posts=Post.where(:active=>true).reverse
  end

  def show
    begin
      @post=Post.find(params[:id])
    rescue
      redirect_to latest_path
    end

    respond_to do |format|
      format.html{ render action: :show }
      format.js{}
    end
  end
end