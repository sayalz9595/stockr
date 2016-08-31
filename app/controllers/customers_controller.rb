class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = current_user.customers.build
  end

  def create
    @user = current_user
    @customer = @user.customers.create(customer_params)
    redirect_to user_customers_path
  end

  def edit
    @user = current_user
    @customer = @user.customers.find(params[:id])
  end

  def update
    @user = current_user
    find_customer
    @customer.update(customer_params)
    redirect_to user_customers_path
  end
  def send_stock_update
    current_user.stock_update
    redirect_to user_customers_path
  end



  private
  def customer_params
    params.require(:customer).permit(:name, :email)
  end

  def find_customer
    @customer = @user.customers.find(params[:id])
  end
end
