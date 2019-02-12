class MainsController < ApplicationController

  def home
    @user = User.find(session[:user_id])
  end

  def login
    @user = User.new
  end
end
