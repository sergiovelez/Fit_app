require 'rails_helper'

feature 'Visiting the Registration Page' do

  it 'displays a link to login' do
    visit register_path
    find_link 'Log In'
  end

  it 'shows a registration form' do
    visit register_path
    find_field 'Name'
    find_field 'Email'
    find_field 'Password'
    find_button 'Register'
  end

  it 'submitting that form logs a user in' do
    visit register_path
    fill_in 'Name', with: 'John Doe'
    fill_in 'Email', with: 'john@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Register'
    expect(current_path).to eq(root_path)
  end
end

Explanation

5. Visiting the Login Page

Let's set up our last test (for now) for the Login Page:

Note
Make a new file spec/features/visiting_login_spec.rb
In that file:

require 'rails_helper'

feature 'Visiting the Login Page' do
  it 'shows a login form' do
    visit login_path
    find_field 'Email'
    find_field 'Password'
    find_button 'Login'
  end

  it 'and submitting that form logs a user in' do
    user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
    visit login_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Login'
    expect(current_path).to eq(root_path)
  end
end
