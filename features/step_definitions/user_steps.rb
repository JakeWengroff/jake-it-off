Given(/^A User exists$/) do

background do
  User.make(:email => 'user@example.com', :password => 'foo')
end

scenario "Signing in with correct credentials" do
  visit '/sessions/new'
  within("#session") do
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'foo'
  end
  click_button 'Sign in'
  expect(page).to have_content 'Success'
end

end
