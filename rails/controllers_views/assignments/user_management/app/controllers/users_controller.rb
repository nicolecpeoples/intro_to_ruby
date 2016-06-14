class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  def index
  	@users = User.all
  end

  def new
  end

  def create
  	@user.create( user_params )
  	redirect_to '/users'
  end

  def edit
  end

  def update
  	@user.update( user_params)
  	redirect_to action: "show", id: @user
  end 

  def show
  end

  def destroy
  	@user.destroy
    redirect_to '/users'
  end

  private
  	def set_user
  		@user = User.find(params[:id])
  	end
    def set_category
      @category = Category.find(params[:id])
    end
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email_address, :password)
    end

end
