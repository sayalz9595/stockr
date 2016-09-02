require "rails_helper"

RSpec.describe CustomerMailer, type: :mailer do
  describe "stock_update" do


      let!(:user) { User.create( email: 'samedsdad@mail.com', password: 'test123',
                  password_confirmation: 'test123') }
      let!(:customer) { user.customers.create( name: 'richard', email: "richard@test.com") }

      let!(:mail) { described_class.stock_update(user).deliver_now }

    # it "renders the headers" do
    #   # byebug
    #   expect(mail.to).to eq(["richard@test.com"])
    #   expect(mail.from).to eq(['samedsdad@mail.com'])
    #   expect(mail.subject).to eq("#{user.email } Stock Update")
    # end

    # it "renders the body" do
    #   email_body = "#{user.email}, has updated their stock, go buy stuff!"
    #   expect(mail.body.encoded).to match(email_body)
    # end
  end

end
