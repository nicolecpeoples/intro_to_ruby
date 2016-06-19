module SessionsHelper

	def log_in(user)
		session[:id] = user.id

	end

	def logged_in?
		!session[:id].nil?
	end

	def log_out
		session.clear
	end
end
