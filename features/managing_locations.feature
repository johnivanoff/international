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

	Scenario: Delete a location
		Given the following location records
	    	| name       |
	    	| location 1 |
	    	| location 2 |
	    	| location 3 |
	    	| location 4 |
	  	And I am on the en site
	  	And I delete the 3rd location
	  	Then I should see "location 1"
	  	And I should see "location 2"
	  	And I should see "location 4"