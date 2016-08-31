require 'rails_helper'

RSpec.describe User, type: :model do
  let( :user ) {User.create(email: 'test@test.com') }

  it 'sends a stock update email' do
    expect { user.stock_update }
    .to change  { ActionMailer::Base.deliveries.count }.by(1)
  end


  it {is_expected.to have_many :customers}
end
