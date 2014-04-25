class UsersController < ActionController::Base

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:user][:email])
    @user.password = params[:user][:password]
    if @user.save
      redirect_to user_path(@user), :notice => "Signed up"
    else
      render "new"
    end
  end



end
