class SecretsController < ApplicationController
  include SessionsHelper
  def index
  	
  end

  def create
  	@secret = Secret.create(content: secret_params[:content], user: User.find(current_user))
  	redirect_to current_user
  end

  def show
  	@secrets = Secret.all
  end 
  def destroy

  end 

  private
    def secret_params
    	params.require(:secret).permit(:content)
    end
end
