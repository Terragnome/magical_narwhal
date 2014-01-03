class InfoController < ApplicationController
  def about
    @users=User.all
  end
end