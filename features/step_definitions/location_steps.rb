Given /^there is a location named "([^"]*)"$/ do |name|
  Factory(:location, :name => name)
end

Given /^I am on the (.+) (.+) page$/ do |language, location|
  I18n.locale = language
  visit('/'+language+'/'+location)
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end
