Feature: Prompt the user for a game
	In order to please Sriram
	As a friendly user
	I want to choose to play Global Thermonuclear War

Scenario: Verify the list is displayed
	Given the application is running
	When I type "Tim"
	Then the output should contain "1. Global Thermonuclear War\n2. Risk\n3. Stratego\n4. Battleship\n5. Axis and Allies"
