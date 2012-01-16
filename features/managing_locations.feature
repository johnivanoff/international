Feature: Manage locations
  In order to manage locations
  As a user
  I want to create and edit my locations.

  Scenario: List a location in english.
	Given there is a location named "location 1"
	And I am on the en site
	When I am on the locations page
	Then I should see "Locations"
	And I should see "location 1"

  Scenario: List a location in Spanish.
	Given there is a location named "location 1"
	And I am on the es site
	When I am on the locations page
	Then I should see "Locaciones"
	And I should see "location 1"