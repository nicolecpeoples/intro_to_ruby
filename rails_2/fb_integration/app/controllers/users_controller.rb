class UsersController < ApplicationController
 def index
  @users = User.all
end
def new
  @user = User.new
end
def create
  @user = User.new(user_params)
  if @user.save
    redirect_to action: 'index'
  else
    redirect_to action: 'new'
  end
end
private
def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :avatar)
end
end
