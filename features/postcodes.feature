Feature: Validate postal codes
  In order to ensure that postal codes are entered correctly
  As a user
  I want to validate postal codes for France and Monaco

Scenario: France postal code
  Given I have a postal code "75001"
  When I validate the postal code
  Then it should be valid

Scenario: France postal code with less than 5 digits
  Given I have a postal code "1234"
  When I validate the postal code
  Then it should be invalid

Scenario: Validating a postal code for France starting with 990
  Given I have a postal code "99000"
  When I validate the postal code
  Then it should be invalid

Scenario: France postal code starting with 7510
  Given I have a postal code "75109"
  When I validate the postal code
  Then it should be invalid

Scenario: France postal code starting with 7500
  Given I have a postal code "75009"
  When I validate the postal code
  Then it should be invalid

Scenario: France postal code with letters
  Given I have a postal code "7500A"
  When I validate the postal code
  Then it should be invalid

Scenario: France postal code with more than 5 digits
  Given I have a postal code "750010"
  When I validate the postal code
  Then it should be invalid

Scenario: Validating a postal code for Guadeloupe
  Given I have a postal code "97110"
  When I validate the postal code
  Then it should be valid