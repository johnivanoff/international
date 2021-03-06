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
		And press "<button>"
		Then I should see "<location>"
		
		Examples:
		 | language | name   | location   | button |
		 | en       | Name   | location 1 | Create |
		 | es       | Nombre | location 1 | crear  |
		
	Scenario Outline: Delete a location
		Given the following location records
	    	| name       |
	    	| location 1 |
	    	| location 2 |
	    	| location 3 |
	    	| location 4 |
	  	And I am on the <language> site
	  	And I <action> the 3rd location
	  	Then I should see "location 1"
	  	And I should see "location 2"
	  	And I should see "location 4"
		
		Examples:
		 | language | action  |
		 | en       | Destroy |
		 | es       | Borrar  |


	Scenario: Edit a location
		Given there is a location named "location 1"
  		And I am on the en site
		When I change the location name to "location has changed"
		Then I should see "location has changed"
