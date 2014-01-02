class UsersController < ApplicationController
  def show
    begin
      @user=User.find(params[:id])
    rescue
      redirect_to latest_path
    end

    respond_to do |format|
      format.html{ render action: :show }
      format.js{}
    end
  end
end
