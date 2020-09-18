Feature: Interest rate calculator
    As a costumer, 
    I would like to enter my deposit value and age, 
    so that I can calculate my anual interest rate.

Background: Check if costumer is an adult 
    Given the costumer entered his age

    Scenario: Costumer is not an adult
        When the costumer's age is bellow 18
        Then costumer is not allowed to make a deposit
        And should receive an error message

    Scenario: Costumer is an adult
        When the costumer's age is equal to or above 18
        Then costumer is allowed to make a deposit

Scenario Outline: Requested deposit value is not allowed
    Given the costumer entered the deposit value
    And the costumer is an adult
    When the deposit value is <deposit_value>
    Then the system shouldn't calculate the interest rate
    And should return <message> message

Examples:

    | deposit_value  |         message          | 
    |       99       |  "deposit is below limit"| 
    |     10001      | "deposit is above limit" |

Scenario: Fixed rate due to age
    Given the costumer is allowed to make a deposit 
    When the costumer's age is greater or equal to 60
    Then his deposit rate is 2.0%

Scenario Outline: Return the interest rate value 
    Given the costumer entered a valid deposit value
    And the costumer is an adult
    When the deposit value is greater or equal to <minimum>
    And the deposit value is less than <maximum>
    Then the system should return <rate> as interest rate

Examples: 

    | minimun | maximum | rate | 
    | 100     | 999     | 1.0% |
    | 1000    | 4999    | 1.3% |
    | 5000    | 10000   | 1.5% | 

