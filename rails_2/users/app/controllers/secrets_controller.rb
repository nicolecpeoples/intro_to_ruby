class SecretsController < ApplicationController
  include SessionsHelper
  before_action :require_login, only: [:index, :create, :destroy]
  def index
  	
  end

  def create
  	@secret = Secret.create(content: secret_params[:content], user: User.find(current_user))
  	redirect_to current_user
  end

  def show
  	@secrets = Secret.all
    @likes = current_user.likes.where(:user_id => current_user)
  end 

  def destroy
  	secret = Secret.find(params[:id])
    secret.destroy if secret.user == current_user
  	redirect_to current_user
  end 

  private
    def secret_params
    	params.require(:secret).permit(:content)
    end
end
