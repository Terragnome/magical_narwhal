class InfoController < ApplicationController
  def about
    @user=User.first
  end
end