Feature: Period of life application
    As a user, 
    I want to use the period of life application, 
    so that I can convert my age into a specific period of life. 

Scenario: Return the period of life 
    Given the user entered an valid age 
    When the user’s input age is greather than  <age>
    And the user’s input age is less than <age_2>
    Then the user should see <result> as result


| age | age_2 | result |
| 0   | 16    | child  |
| 16  | 60    | adult  |

Scenario:  User enter an invalid age
    When the user's inputs age equals 0
    Then the user should see an invalid age message

Scenario: User enter a wrong type data
    When the user's input is not a number
    Then the user should see an error message