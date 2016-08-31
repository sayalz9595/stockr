require "rails_helper"

RSpec.describe CustomerMailer, type: :mailer do
  describe "stock_update" do

    let(:user) { User.create( email: 'samedsdad@mail.com' ) }
    let(:mail) { CustomerMailer.stock_update(user) }
    let(:customer) { User.customers.create( name: 'richard', email: "richard@test.com") }

    it "renders the headers" do
      expect(mail.subject).to eq("#{user.email }Stock update")
      expect(mail.to).to eq(["richard@test.com"])
      expect(mail.from).to eq(['samedsdad@mail.com'])
    end

    it "renders the body" do
      email_body = "#{user.email} has updated their stock, go buy stuff!"
      expect(mail.body.encoded).to match(email_body)
    end
  end

end
