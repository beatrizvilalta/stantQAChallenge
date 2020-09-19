Feature: Period of life function
    As a developer, 
    I want to create the period of life function, 
    so that I can convert an age into a specific period of life. 

    Scenario Outline: Return the period of life 
        Given the user entered the valid age <age>
        When the age is used as a parameter
        Then the function should return "<period_of_life>" as result

    Examples:
        |   age    | period_of_life | 
        |    1     |     CHILD      | 
        |    6     |     CHILD      |
        |    16    |     ADULT      |
        |    20    |     ADULT      |
        |    60    |     ELDERLY    |
        |    65    |     ELDERLY    |


    Scenario Outline: Return invalid age message
        Given the user entered an invalid age equal to <invalid>
        When the age is used as a parameter 
        Then the function should return an invalid age message "INVALID AGE"

    Examples:
        | invalid | 
        |    0    | 
        |   -3    | 
        |   -1    | 

    Scenario Outline: Return wrong input message
        Given the user entered an invalid age equal to "<user_input>"
        When the age is used as a parameter 
        Then the function should return an invalid input message "WRONG TYPE, ENTER A NUMBER"

    Examples:
        |user_input| 
        | ten      | 
        | twenty   |
        | 20 years old|