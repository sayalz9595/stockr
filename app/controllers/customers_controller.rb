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


  private
  def customer_params
    params.require(:customer).permit(:name, :email)
  end
end
