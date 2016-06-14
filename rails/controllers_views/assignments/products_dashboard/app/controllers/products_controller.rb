class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :all_categories, only: [:new, :edit]
  def index
    @products = Product.all

  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    Product.create(product_params)
    redirect_to '/products'
  end

  def update
    @product.update(product_params)
    redirect_to action: 'show', id: @product
  end

  def destroy
    @product.destroy
    redirect_to '/products'
  end

  private 
    def set_product
      @product = Product.find(params[:id])
    end
    def all_categories
      @categories = Category.all
    end

    def product_params
      params.require(:product).permit(:category_id, :name, :description, :pricing)
    end
end
