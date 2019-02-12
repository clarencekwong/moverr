class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    byebug
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
    session.delete :username
    redirect_to '/login'
  end

end
