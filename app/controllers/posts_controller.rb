class PostsController < ApplicationController
  def latest
    redirect_to post_path(1)
  end

  def index
  end

  def show
  end
end