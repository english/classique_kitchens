class UsersController < ApplicationController
  before_filter :authorise
  caches_action [:new]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to root_url, notice: 'Account created Successfully'
    else
      render 'new'
    end
  end
end
