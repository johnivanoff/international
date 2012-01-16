Feature: Manage locations
	In order to manage locations
	As a user
	I want to create and edit my locations.

	Scenario Outline: Withdraw fixed amount
		Given there is a location named "<location>"
		And I am on the <language> site
		When I am on the locations page
		Then I should see "<title>"
		And I should see "<location>"
		
		Examples:
		 | location   | language | title      |
		 | location 1 | en       | Locations  |
		 | location 2 | es       | Locaciones |
