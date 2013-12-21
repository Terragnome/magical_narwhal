class PostsController < ApplicationController
  def latest
    @post=Post.last
    render :show
  end

  def index
    @posts=Post.where(:active=>true)
  end

  def create
    @post=Post.new
  end

  def show
    begin
      @post=Post.find(params[:id])
    rescue
      redirect_to latest_path
    end
    
  end
end