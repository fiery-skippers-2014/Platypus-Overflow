class SessionsController < ApplicationController

  def index
    redirect_to users_path
  end

  def new
    # my strong opinion: I'd rather have a new.html.erb than login.html.erb
    render :login
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      login user
      redirect_to session_path(user), notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session.clear
    redirect_to root_path, :notice => "Logged out!"
  end
end
