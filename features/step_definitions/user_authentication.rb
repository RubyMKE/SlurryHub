Given /^a site visitor$/ do
  visit('/')
end

When /^the visitor chooses to create an account$/ do
  click_link 'Sign up'
end

Then /^the visitor should be walked through account creation$/ do
  page.should have_content('Sign up')
end

When /^the visitor enters valid information$/ do
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
end

Then /^a new user account should be created for the visitor$/ do
  page.should have_content('Signed in as user@example.com')
end

When /^the visitor enters invalid information$/ do
  click_link 'Sign out'
  click_link 'Sign up'

  fill_in 'Email', with: 'user2@example.com'
  fill_in 'Password', with: 'password123'
  fill_in 'Password confirmation', with: 'password666'
  click_button 'Sign up'
  
end

Then /^a new user account should not be created for the visitor$/ do
  page.should have_content('Password doesn\'t match confirmation')
end

Given /^a user$/ do
  User.create(email: 'user@example.com', password: 'password')
end

When /^they sign in with an email address$/ do
  visit('/')
  click_link('sign in')
  
  fill_in 'Email', with: 'user@example.com'
  fill_in 'Password', with: 'password'
  click_button 'Sign in'
end

Then /^they should be authenticated$/ do
  page.should have_content('Signed in successfully.')
end

Given /^a visitor without an account$/ do
  # no account created
end

When /^they try to sign in$/ do
  visit('/')
  click_link('sign in')
  
  fill_in 'Email', with: 'user@example.com'
  fill_in 'Password', with: 'password'
  click_button 'Sign in'
  
end

Then /^they should not be authenticated$/ do
  page.should have_content('Invalid email or password.')
end

Then /^they should be redirected to create an account$/ do
  # is a re-direct really neccesary? this would involve hacking devise
  page.should have_link('Sign up')
end