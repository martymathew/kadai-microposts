class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = crrent_user
      @micropost = current_user.microposts.build
      @microposts = current_user.microposts.order('created_at DESC').page(params[:page])
    end
  end 
end