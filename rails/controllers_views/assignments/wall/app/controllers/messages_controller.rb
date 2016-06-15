class MessagesController < ApplicationController
  def index
  end

  def new
  end

  def create
  	Message.create(content: message_params[:content], user: User.find(session[:id]), post: Post.find(message_params[:post_number]) )
  	redirect_to '/posts'
  end


  def show
  end

  def edit
  end

  private
  def message_params
  		params.require(:message).permit(:content, :post_number)
  	end
end
