class StocksController < ApplicationController

  def index
  end

  def new
    @stock = current_user.build_stock
  end

  def create
    id_array = stock_params.values.flatten.reject(&:empty?)
    @stock = current_user.build_stock
    id_array.each do |id|
      product = current_user.products.find(id)
      @stock.products << product
    end
    @stock.save
    redirect_to user_stocks_path
  end

  private

  def stock_params
    params.require(:stock).permit(product_id: [])
  end
end
