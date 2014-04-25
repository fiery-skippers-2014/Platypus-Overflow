class UsersController < ApplicationController
  # before_filter :authorize, only: [:edit, :update]
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to session_path(@user)
    else
      render :new
    end
  end

  def show
    if current_user
      render :show
    else
      render :new
    end
  end


end
