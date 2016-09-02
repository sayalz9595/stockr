class CustomerMailer < ApplicationMailer
default to: "test@mail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.stock_update.subject

  def stock_update(user)
    @greeting = "Hi"
    @user = user
    #  byebug
    if @user.customers.any?

      mail( to: @user.customers.first.email, subject: "#{@user.email} Stock Update", from: @user.email )
    end
  end
end
