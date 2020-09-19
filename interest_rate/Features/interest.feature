Feature: Interest rate calculator
    As a customer, 
    I would like to enter my deposit value and age, 
    so that I can calculate my anual interest rate.

Background: Check if customer is an adult 
    Given the customer entered his age

    Scenario: Customer is not an adult
        When the customer's age is bellow 18
        Then customer is not allowed to make a deposit
        And should receive an error message

    Scenario: Customer is an adult
        When the customer's age is equal to or above 18
        Then customer is allowed to make a deposit

Background: Verify deposit value
    Given the customer has a valid age
    And the customer entered the deposit value

    Scenario: Deposit value is bellow limit 
        When the deposit value is bellow 100
        Then the system shouldn't calculate the interest rate
        And should return "Deposit bellow limit"

    Scenario: Deposit value is above limit
        When the deposit value is greater than 10000
        Then the the system shouldn't calculate the interest rate
        And should return "Deposit above limit"

Background: Verify the interest rate
    Given the customer entered a valid deposit value

    Scenario: Fixed rate due to age
        When the customer's age is greater or equal to 60
        Then his deposit rate is 2.0%

    Scenario Outline: Return the interest rate value 
        When the deposit value is greater or equal to <minimum>
        And the deposit value is less than <maximum>
        Then the system should return <rate> as interest rate

    Examples: 

        | minimun | maximum | rate | 
        | 100     | 999     | 1.0% |
        | 1000    | 4999    | 1.3% |
        | 5000    | 10000   | 1.5% | 

