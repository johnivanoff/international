Feature: Manage locations
  In order to manage locations
  As a user
  I want to create and edit my locations.

  Scenario: List a parent location and show child count
	Given there is a location named "location 1"
	When I am on the locations main page
	Then I should see "location 1"