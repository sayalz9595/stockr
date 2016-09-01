require 'rails_helper'

RSpec.describe User, type: :model do
  let( :user ) {User.create(email: 'test@test.com', password: 'test123', password_confirmation: 'test123' ) }
  let!( :customer ) { user.customers.create(name: 'Richard', email: 'richard@mail.com' )}
  it 'sends a stock update email' do
    expect { user.stock_update }
    .to change  { ActionMailer::Base.deliveries.count }.by(1)
  end


  it { is_expected.to have_many :customers }
  it { is_expected.to have_one :stock }
end
