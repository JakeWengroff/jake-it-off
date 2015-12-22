Given(/^I am logged in as a user$/) do
  visit "/"
end

When(/^I fill in the form with a new Item$/) do
  visit 'users/items' do
    fill_in 'Add a To-Do', :with => item
  end
end

Then(/^I see a new Item$/) do
  visit 'user' do
    expect(page).to have_content 'Success'
  end
end
