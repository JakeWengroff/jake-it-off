Given(/^I am logged in as a user$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I visit My To Do List$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I can add an Item$/) do |items|
  items.all.each do |item|
    Item.create!(:item => item)
  end
end
