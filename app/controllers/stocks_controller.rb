class StocksController < ApplicationController

  def new
    unless Product.any?
      redirect_to "/"
      flash[:notice] = "You must first add your range of products"
    end
    @products = Product.all
  end

end
