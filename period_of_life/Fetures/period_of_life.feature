Feature: Period of life system
    As a user, 
    I want to use the period of life system, 
    so that I can convert my age into a specific period of life. 

Background: 
    Given the user entered an valid age 

    Scenario: Return the CHILD period of life 
        When the user’s input age is greather than 0
        And the user’s input age is less than 16
        Then the user should see "CHILD" as result

    Scenario: Return the ADULT period of life 
        When the user’s input age is greather than or equal to 16
        And the user’s input age is less than 60
        Then the user should see "ADULT" as result

    Scenario: Return the ELDERLY period of life
        When the user's input is greater than 60
        Then the user should see "ELDERLY" as result
    
Scenario Outline: Return invalid message
    Given the user entered an invalid age
    When the user’s input is equal to <invalid>
    Then the user should see an invalid message

Examples:
    | invalid | 
    |    0    | 
    |   -3    | 
    |   -1    | 

