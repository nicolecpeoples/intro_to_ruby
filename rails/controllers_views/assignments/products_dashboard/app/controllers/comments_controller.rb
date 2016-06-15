class CommentsController < ApplicationController
  def index
  	@comments = Comment.all
  end

  def create
  	Comment.create(comment: comment_params[:comment], product: Product.find(params[:comment][:product]))
    @product = params[:comment][:product]
    redirect_to "/products/#{@product}"
  end

  private
  	def comment_params
  		params.require(:comment).permit(:comment)
  	end
end
