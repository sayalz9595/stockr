require 'rails_helper'

feature 'product' do
  scenario'a new product can be added' do
    visit '/products'
    click_link 'Add a product'
    fill_in 'Name', with: "Apple"
    click_button 'Create Product'
    expect(page).to have_content("Apple")
    expect(Product.count).to eq 1
  end
end
