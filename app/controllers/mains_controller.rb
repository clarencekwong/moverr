class MainsController < ApplicationController

  def home
  end

  def login
    @user = User.new
  end
end
