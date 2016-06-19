class UsersController < ApplicationController
	include SessionsHelper
	before_action :set_user, only: [:show, :edit, :update, :destroy, :correct_user]

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
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
  	@user = User.update(user_params)

  	if @user.save?
  		flash[:success] ="You have successfully registered"
  		redirect_to 'show'
  	else
  		render @user
  	end
  end

  def show

  end

  private
   def set_user
   	 @user = User.find(params[:id])
   end 
  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
