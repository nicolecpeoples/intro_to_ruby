class LikesController < ApplicationController
  def index

  end

  def create
  	Like.create(user: current_user, secret: Secret.find(params[:secret_id]))
  	redirect_to secrets_path
  end

  def destroy
  	Like.find(params[:id]).destroy
  	redirect_to secrets_path
  end

end
