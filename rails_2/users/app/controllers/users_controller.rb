class UsersController < ApplicationController
	include SessionsHelper
	before_action :set_user, only: [:show, :edit, :update, :destroy, :correct_user]

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def edit

  end

  def create
  	@user = User.create(user_params)
  	if @user.save
  		flash[:success] ="You have successfully registered"
  		log_in @user
  		redirect_to @user
  	else 
		render 'new'
  	end
  end 

  def update
  	
  	if @user.update_attributes(user_params)
  		flash[:success] ="Profile Updated"
  		redirect_to @user
  	else
  		render @user
  	end
  end

  def show
    @all_secrets = current_user.secrets
    @secrets = Secret.new
  end

  def destroy
  	destroy_user
    flash[:success] = "Your account has been successfully deleted"
    redirect_to login_path
  end 

  private
   def set_user
   	 @user = User.find(params[:id])
   end 
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
