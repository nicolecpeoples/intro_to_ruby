class UsersController < ApplicationController

  def index
  	if !session[:username]
  		session[:username] = ""
  	end
    if !session[:id]
      session[:id] = 0
    end
  end

  def create
    #changed user to local variable (not needed on view)
  	user = User.create(user_params)
    if user.save
      session[:username] = user.username
      session[:id] = user.id
      redirect_to '/posts'
    else
      #changed flash message to directly reflect user save errors
      flash[:notice] = user.errors.full_messages
      flash[:color] = "invalid"
      redirect_to '/'
    end
      
  	
  end

  def new

  end

  def show
  end

  def edit

  end

  private
  	def user_params
  		params.require(:user).permit(:username, :password)
  	end
end
