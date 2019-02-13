class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    @user = @user.try(:authenticate, params[:user][:password])
    if @user.save
      session[:user_id] = @user.id
      redirect_to controller: 'mains', action: 'home'
    else
      flash.now[:error] = 'Invalid username/password combination'
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end

end
