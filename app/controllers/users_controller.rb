class UsersController < ApplicationController
  before_action :authorize, only: [:show]
  before_action :authorize_edit, only: [:edit]
 
  
  def index
    @users = User.all
   
    
  end

  def show
    @user = User.find(params[:id])
   
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
   
  end

  def update
    @user = User.find(params[:id])
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.save
   redirect_to user_path(current_user.id)

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/pets"
  end

  def authorize_edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to "/pets"
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :image_url, :password, :password_confirmation)
  end
end
