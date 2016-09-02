class CustomerMailer < ApplicationMailer
default to: "test@mail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.stock_update.subject

  def stock_update(user)
    @greeting = "Hi"
    @user = user
    if @user.customers.any?
      @emails = []
      @user.customers.each do |customer|
        @emails << customer.email
      end
        mail( to: @user.email, bcc: @emails, subject: "#{@user.email} Stock Update", from: @user.email)
    end
  end
end
