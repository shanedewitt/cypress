Feature: Show Product

Background:
  Given the user is signed in
  And the user has created a vendor with a product

Scenario: Successful Download All Patients
  When all measure tests have a state of ready
  And the user visits the product page
  Then the user should be able to download all patients

Scenario: Cannot View Download All Patients
  When all measure tests do not have a state of ready
  And the user visits the product page
  Then the user should not be able to download all patients