class MainsController < ApplicationController
  skip_before_action :authorized, only: [:home]

  def home
    @user = User.find_by(id: session[:user_id])
  end

  def login
    @user = User.new
  end

  def not_found
    render :'404'
  end
end
