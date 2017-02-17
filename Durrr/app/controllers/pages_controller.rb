class PagesController < ApplicationController
  def home
    @user = current_user
  end

  def profile
    if !@user = User.where('lower(username) = ?', params[:username]).first
      redirect_to root_path
    end
  end
end
