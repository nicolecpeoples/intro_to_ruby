class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	# render json: @products   #good for creating json api
  end

  def new

  end

  def create
  	#render :text => "came to Create method"

  	@product = Product.create(name: params[:name], description: params[:description])

  	puts "\n\n", @product.inspect, "\n\n"
  	redirect_to '/products/index'

  	
  end 
  def test_folder
  	render "new"
  end
end


