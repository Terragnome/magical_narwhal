class UsersController < ApplicationController
  def index
    @users=User.all

    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def show
    begin
      @user||=User.find_by_nickname(params[:id])
      @user||=User.find(params[:id])
    rescue
      redirect_to latest_path and return
    end

    respond_to do |format|
      format.html
      format.js
    end
  end
end
