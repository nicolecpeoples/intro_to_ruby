class PostsController < ApplicationController

  def index
  	@posts = Post.all
    @messages = Message.all
    
  end

  def new

  end

  def create 
  	Post.create(content: post_params[:content], user:  User.find(session[:id] ) )
  	redirect_to '/posts'
  end

  def show
  end

  def edit
  end

  private 
  	def post_params
  		  params.require(:post).permit(:content)
  	end
end
