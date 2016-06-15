class LoginController < ApplicationController

	def new

	end

	def create

		@user = User.find_by(username: params[:user][:username])
		puts @user
		if @user
			puts  params[:user][:username] 
			session[:username] = @user.username
      		session[:id] = @user.id
    		redirect_to '/posts'
    	else
    		flash.now[:danger] = 'Invalid email/password combination'
    		redirect_to '/'
		end
	end

	def destroy
		session.clear
    	redirect_to '/'
	end
end
