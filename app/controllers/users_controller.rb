class UsersController < ApplicationController
  def index
    @users=User.all
  end
  
  def show
    begin
      @user||=User.find_by_nickname(params[:id])
      @user||=User.find(params[:id])
    rescue
      redirect_to latest_path and return
    end
  end
end
