When(/^I go to friend page$/) do
  visit "/"
end

When(/^I click_link New Friend$/) do
  click_button "New Friend"
end

When(/^I go to form create friend$/) do
  visit "friends/new"
  fill_in "Name", :with => "minh thong"
  fill_in "Birhtday", :with => "1/1/1999"
  fill_in "Email", :with => "minhthong@gmail.com"
  fill_in "Phone", :with => "12345"
  fill_in "Feeling", :with => "hanh phuc"
end

Then(/^I click_button Create Friend$/) do
  click_button "Create Friend"
end