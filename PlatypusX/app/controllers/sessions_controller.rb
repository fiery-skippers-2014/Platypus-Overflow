class SessionsController < ApplicationController

  def index
    redirect_to users_path
  end

  def new
    render :login
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to session_path(user), notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def show
    @questions = Question.all
  end

  def destroy
    p "hi"
    session[:user_id] = nil
    redirect_to root_path, :notice => "Logged out!"
  end
end