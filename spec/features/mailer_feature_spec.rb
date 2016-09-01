feature "Sending stock update" do

  scenario ' Displays an error when the user has no customers, but has stock' do
    create_stock
    click_link 'Customer List'
    click_link 'Send stock update'
    expect(page).to have_content('You need to add a customer first')
  end


end
