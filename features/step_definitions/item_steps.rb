Given(/^I am logged in as a user$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should have Items in my To Do List$/) do |items|
  items.all.each do |item|
  end
end

When(/^I fill in the form with a new Item$/) do |items|
  items.all.each do |item|
    Item.create!(:item => item)
  end
end

Then(/^I see a new Item$/) do
  pending # express the regexp above with the code you wish you had
end
