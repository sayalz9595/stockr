require 'rails_helper'

feature 'product' do
  scenario 'a new product can be added' do
    visit '/products'
    click_link 'Add a product'
    fill_in 'Name', with: "Apple"
    click_button 'Create Product'
    expect(page).to have_content("Apple")
    expect(Product.count).to eq 1
  end
  scenario 'a product can be editted' do
    Product.create(name:'Appl')
    visit '/products'
    click_link 'Edit Appl'
    fill_in 'Name', with: "Apple"
    click_button 'Update Product'
    expect(page).to have_content("Apple")
  end

  scenario 'a product can be deleted' do
    Product.create(name:'Apple')
    visit '/products'
    click_link 'Delete Apple'
    expect(page).not_to have_content("Apple")
  end
end
