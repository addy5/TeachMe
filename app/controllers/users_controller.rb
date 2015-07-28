class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:newUser] = %Q[Thank you for signing up, please <a href="/sessions/new" class='logLink'>log in</a> to continue]
      redirect_to "/"
    else
      render "new"
    end
  end

  def edit
  end

  def show
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      redirect_to new_session_path
      flash[:notice] = "Please log in to proceed."
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
