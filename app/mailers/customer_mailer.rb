class CustomerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.stock_update.subject
  #
  def stock_update(user)
    @greeting = "Hi"
    @user = user


    mail to: "#{@user.customers.first.email}"
  end
end
