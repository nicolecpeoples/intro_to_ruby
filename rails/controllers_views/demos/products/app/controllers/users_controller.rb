class UsersController < ApplicationController
  def index
  	@users = User.all
  end
end

# class UsersController < ApplicationController
#   def index
#     if errors?
#       flash[:error] = "You have errors"
#       redirect_to '/users/' #pathing will be explained later
#     else
#       flash[:success] = "You did it!"
#       redirect_to '/users/'
#     end
#   end
# end


# redirect_to root_url, flash: { referral_code: 1234 }
# redirect_to root_url, notice: "You have successfully logged out."
# redirect_to root_url, alert: "You're stuck here!"

#session instances
# class UsersController < ApplicationController
#   def create
#     #adds the value in params[:id] to the :id key in session
#     session[:id] = params[:id] #we will talk about params in a bit
#   end
#   def log_out
#     #sets the session[:id] to nil, overwriting the previous value
#     session[:id] = nil
#   end
# end