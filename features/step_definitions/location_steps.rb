Given /^there is a location named "([^"]*)"$/ do |name|
  Factory(:location, :name => name)
end

Given /^I am on the locations page$/ do
  visit(locations_path)
end