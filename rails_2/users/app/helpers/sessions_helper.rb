module SessionsHelper

	def log_in(user)
		session[:id] = user.id
	end

	def require_login
		redirect_to '/login' if session[:id] == nil
	end


	def require_correct_user
		user = User.find(params[:id])
		 redirect_to current_user if current_user != user
	end

	def current_user	
		User.find(session[:id]) if session[:id]
	end 

	def logged_in?
		!session[:id].nil?
	end

	def log_out
		session.clear
	end

	def destroy_user
		current_user.destroy
		session.clear
	end
end
