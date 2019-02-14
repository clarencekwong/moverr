class MainsController < ApplicationController
  skip_before_action :authorized, only: [:home]

  def home
    @user = User.find_by(id: session[:user_id])
    if session[:user_id]
      @posted_jobs = User.find(session[:user_id]).posted_jobs
      @accepted_jobs = User.find(session[:user_id]).mover_jobs
    end
  end

  def login
    @user = User.new
  end

  def not_found
    render :'404'
  end
end
