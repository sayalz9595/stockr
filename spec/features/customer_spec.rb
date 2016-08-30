require 'rails_helper'

feature 'customer' do
  scenario'logged in user can create a customer' do
    sign_up
    click_link 'Customer List'
    click_link 'Add a customer'
    fill_in 'Name', with: "Damla Baklavalari"
    fill_in 'Email', with: "damla@gmail.com"
    click_button 'Create Customer'
    expect(page).to have_content("Damla Baklavalari")
    expect(page).to have_content("damla@gmail.com")
  end
end
