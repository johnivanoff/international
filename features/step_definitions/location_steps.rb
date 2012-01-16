Given /^there is a location named "([^"]*)"$/ do |name|
  Factory(:location, :name => name)
end