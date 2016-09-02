def sign_up(email="samedsdad@mail.com")
  visit "/"
  within(:css, "li#signup") do
    click_link('Sign up')
  end
  fill_in "Email", with: email
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_button "Sign up"
end

def login(email="samedsdad@mail.com")
  visit "/"
  fill_in "Email", with: email
  fill_in "Password", with: "password"
  click_button "Login"
end

def create_customer
  sign_up
  click_link 'Customer List'
  click_link 'Add a customer'
  fill_in 'Name', with: "Damla Baklavalari"
  fill_in 'Email', with: "damla@gmail.com"
  click_button 'Create Customer'
end

def add_product(product: "Apple")
  click_link 'Add a product'
  fill_in 'Name', with: product
  click_button 'Create Product'
end
