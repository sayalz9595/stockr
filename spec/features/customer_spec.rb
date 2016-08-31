require 'rails_helper'

feature 'customer' do
  scenario'logged in user can create a customer' do
    create_customer
    expect(page).to have_content("Damla Baklavalari")
    expect(page).to have_content("damla@gmail.com")
  end

  scenario'logged in user can edit a customer' do
    create_customer
    click_link 'Edit Damla Baklavalari'
    fill_in 'Email', with: 'damlabaklavalari@gmail.com'
    click_button 'Update Customer'
    expect(page).to have_content('damlabaklavalari@gmail.com')
    expect(page).not_to have_content("damla@gmail.com")
  end

  scenario 'logged in user can delete a customer' do
    create_customer
    click_link 'Delete Damla Baklavalari'
    expect(page).not_to have_content('Damla Baklavalari')

  scenario 'logged in user is sending an email' do
    create_customer
    expect {click_link 'Send stock update'}
    .to change  { ActionMailer::Base.deliveries.count }.by(1)

  end
end
