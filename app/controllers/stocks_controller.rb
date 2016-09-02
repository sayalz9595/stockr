class StocksController < ApplicationController

  def index
  end

  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.create(user_id: current_user.id)
    current_user.stock = @stock
    store_products_in_stock(@stock)
    redirect_to user_stocks_path
  end

  private

  def stock_params
    params.require(:stock).permit(:user_id, product_id: [])
  end

  def find_stock
    @stock = Stock.find(params[:id])
  end

  def store_products_in_stock(stock)
    @stock = stock
    id_array = stock_params.values.flatten.reject(&:empty?)
    id_array.each do |id|
      product = current_user.products.find(id)

      @stock.products << product
    end
    @stock.save
  end
end
