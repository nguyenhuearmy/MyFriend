Given(/^a valid user$/) do
  # Write code here that turns the phrase above into concrete actions
end

When(/^I go to the login page$/) do
  visit "users/sign_in"
end

When(/^I fill in the following:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  fill_in "Email", :with => "minikermit@gmail.com"
  fill_in "Password", :with => "12345678"
end

When(/^I press "([^"]*)"$/) do |arg1|
  click_button "Log in"
end