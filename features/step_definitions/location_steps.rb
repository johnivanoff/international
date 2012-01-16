Given /^there is a location named "([^"]*)"$/ do |name|
  Factory(:location, :name => name)
end

Given /^I am on the (.+) site$/ do |language|
   I18n.locale = language
end

Given /^I am on the locations page$/ do
  visit(locations_path)
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end


Given /^I am on new location page$/ do
  visit(new_location_path)
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^press "([^"]*)"$/ do |button|
  click_button(button)
end

Given /^there is a location named "([^"]*)"$/ do |name|
  Factory(:location, :name => name)
end