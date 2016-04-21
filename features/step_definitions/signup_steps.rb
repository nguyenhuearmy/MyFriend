When(/^i go to home page$/) do
  visit "/"
end

When(/^I click_link Sign up now!$/) do
   find_link("Sign up now!").click
end

Then(/^I go to user page$/) do
  visit "/"
end