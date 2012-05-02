Feature: Prompt the user for a game
	In order to please Sriram
	As a friendly user
	I want to choose to play Global Thermonuclear War

Scenario: Verify the list is displayed
	Given the application is running
	When I type "Tim"
	When I type "2"
	Then the output should contain "1. Global Thermonuclear War\n2. Risk\n3. Stratego\n4. Battleship\n5. Axis and Allies"

Scenario: Verify the prompt shows up
	Given the application is running
	When I type "Tim"
	When I type "2"
	Then the output should contain "Which game would you like to play?(1-5)"

Scenario: Verify refusal on something not GTW
	Given the application is running
	When I type "Tim"
	When I type "2"
	Then it should exit with refusal

Scenario: Verify choice as GTW
	Given the application is running
	When I type "Tim"
	When I type "1"
	Then it should exit with "BOOM!"

