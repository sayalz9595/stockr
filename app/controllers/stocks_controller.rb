class StocksController < ApplicationController

def new
  unless Product.any?
    redirect_to "/"
    flash[:notice] = "You must first add your range of products"
  end
  @products = Product.all
  @stock = Stock.new
end

def create
  @stock = stock_params.values.flatten.reject(&:empty?)
  @stock.each do |item|
    Stock.create(product_id: item)
  end
  redirect_to "/"
end

private
   def stock_params
     params.require(:stock).permit(product_id: [])
   end
end
