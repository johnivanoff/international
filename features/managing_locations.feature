Feature: Manage locations
	In order to manage locations
	As a user
	I want to create and edit my locations.

	Scenario Outline: List locations
		Given there is a location named "<location>"
		And I am on the <language> site
		When I am on the locations page
		Then I should see "<title>"
		And I should see "<location>"
		
		Examples:
		 | location   | language | title      |
		 | location 1 | en       | Locations  |
		 | location 2 | es       | Locaciones |

	Scenario Outline:: Create a new location
		Given I am on the <language> site
		And I am on new location page
		And I fill in "<name>" with "<location>"
		And press "<create>"
		Then I should see "<location>"
		
		Examples:
		 | language | name   | location   | create |
		 | en		| Name   | location 1 | Create |
		 | es		| Nombre | location 1 | crear ubicación |