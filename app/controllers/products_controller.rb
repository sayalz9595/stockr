class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = Product.search(params[:search])
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to products_path
    else
      render "new"
    end
  end

  def edit
    find_product
  end

  def update
    find_product
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy
    find_product
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
