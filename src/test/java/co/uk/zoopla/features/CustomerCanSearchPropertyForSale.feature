Feature: Search for Property for sale
  As a customer
  I want the ability to search a property
  So I can have more information about searched property

  Scenario Outline: User can successfully search for a property
    Given I navigate to Zoopla.co.uk
    When I enter a "<Location>" in the search bar
    And I select "<MinPrice>" from the Min dropdown
    And I select "<MaxPrice>" from the Max dropdown
    And I select "<PropertyType>" from the Property dropdown
    And I select "<Bedrooms>" from the rooms dropdown
    And I click on the Search button
    Then all the property within the selected location and price range are displayed


    Examples:
      |Location|MinPrice|MaxPrice|PropertyType|Bedrooms|
      |ST4 7DW|£50,000	|£400,000	|Flat	|	3+|
#      |Liverpool|£600,000|£1,000,000|House|7|
#      |M40|£200,000|£800,000|Farms|3|
#
#
#  Scenario Outline: User cannot successfully search for a property
#    Given I navigate to Zoopla.co.uk
#    When I enter an invalid "<Location>" in the search bar
#    And I select a "<MinPrice>" from the Drop Button
#    And I select a "<MaxPrice>" from the Drop Button
#    And I select a "<PropertyType>" from the Drop Button
#    And I select "<Bedrooms>" from the Drop Button
#    And I click on the Search button
#    Then an error message is displayed
#
#    Examples:
#      |Location|MinPrice|MaxPrice|PropertyType|Bedrooms|
#      |	|200000|500000|House|3|
#      |Lagos|300000|450000|Flat|5|
