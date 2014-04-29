class UsersController < ApplicationController
  before_filter :authorize, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      login @user
      redirect_to session_path(@user)
    else
      render :new
    end
  end
end
