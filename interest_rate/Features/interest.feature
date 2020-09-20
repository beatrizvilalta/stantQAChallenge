@interest_rate
Feature: Interest rate calculator
    As a customer, 
    I would like to enter my deposit value and age, 
    so that I can calculate my anual interest rate.

Scenario Outline: Check if costumer is an adult 
    Given the customer age is <age>
    When the customer enters his age on the system 
    Then the system should return <age_validation> 
    
Examples:
    | age  | age_validation |      
    | 15   | false      |  
    | 17   | false      |  
    | 18   | true       |  
    | 19   | true       | 

Scenario: Verify deposit value is valid
    Given the customer entered a <deposit_value>
    When the system checks if the costumer is allowed to make a deposit
    Then the system should return <deposit_validation> 
Examples:
    | deposit_value | deposit_validation| 
    |      99       |      false        | 
    |    10001      |      false        |
    |    10000      |      true         |
    |     100       |      true         |

Scenario: Return error message 
    Given the costumer entered an <age>
    And the costumer entered a <deposit_value>
    When the age or the deposit value are not valid
    Then return <error_message> message 

Examples:
    | age | deposit_value |    error_message       |
    | 15  |     2000      | "Age not valid"        |
    | 20  |     12000     | "Deposit not valid"  |
    | 50  |      70       | "Deposit not valid" |
    


Scenario: Fixed rate due to age
    Given the customer age is greater or equal to 60
    And his deposit value is valid
    When the system checks his rate
    Then the system should return 2.0% as interest rate

Scenario Outline: Return the interest rate value 
    Given the customer entered a valid deposit value
    When the <deposit_value> is rated
    Then the system should return <rate> as interest rate

Examples: 
    | deposit_value | rate | 
    |      600      | 1.0% |
    |      999      | 1.0% |
    |     1000      | 1.3% |
    |     2000      | 1.3% |
    |     4999      | 1.3% |
    |     5000      | 1.5% |
    |     10000     | 1.5% |

