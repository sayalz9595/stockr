class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = current_user.products.search(params[:search])
    else
      @products = current_user.products
    end
  end

  def new
    @product = current_user.products.build
  end

  def create
    @product = current_user.products.create(product_params)
    if @product.save
      redirect_to user_products_path
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
    redirect_to user_products_path
  end

  def destroy
    find_product
    @product.destroy
    redirect_to user_products_path
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
