Given(/^I click on "([^"]*)"$/) do |link|
  click_link_or_button link
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
end

Then(/^I should not see "([^"]*)"$/) do |text|
  expect(page).to_not have_content text
end
